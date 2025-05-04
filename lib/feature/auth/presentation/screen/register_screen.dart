import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:study_case/core/extension/context_extension.dart';
import 'package:study_case/core/model/general_state.dart';
import 'package:study_case/core/service/go_router_service.dart';
import 'package:study_case/core/widget/custom_text_field.dart';
import 'package:study_case/feature/auth/presentation/bloc/auth_bloc.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isPasswordHidden = true;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 80),
          const Text(
            'Register',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomTextField(
                  controller: nameController,
                  labelText: 'Name',
                  prefixIcon: Icons.email_outlined,
                ),
                CustomTextField(
                  controller: emailController,
                  labelText: 'Email',
                  prefixIcon: Icons.email_outlined,
                ),
                CustomTextField(
                  controller: passwordController,
                  labelText: 'Password',
                  prefixIcon: Icons.lock_outline,
                  obscureText: isPasswordHidden,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isPasswordHidden = !isPasswordHidden;
                      });
                    },
                    child: Icon(
                      isPasswordHidden
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                BlocConsumer<AuthBloc, AuthState>(
                  listener: (context, state) {
                    if (state.status == GeneralState.error()) {
                      context.showSnackBar(
                        message: state.errorMessage!,
                        color: Colors.red,
                      );
                    }

                    if (state.status == GeneralState.success()) {
                      context.showSnackBar(
                        message: 'Register Success',
                        color: Colors.green,
                      );
                      context.goNamed(AppRoute.login.name);
                    }
                  },
                  builder: (BuildContext context, AuthState state) {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        final name = nameController.text.trim();
                        final email = emailController.text.trim();
                        final password = passwordController.text;

                        if (name.isEmpty || email.isEmpty || password.isEmpty) {
                          context.showSnackBar(
                            message: 'Please fill all fields',
                            color: Colors.red,
                          );
                          return;
                        }

                        context.read<AuthBloc>().add(
                          AuthEventRegister(
                            name: name,
                            email: email,
                            password: password,
                          ),
                        );
                      },
                      child:
                          state.status == GeneralState.loading()
                              ? const CircularProgressIndicator()
                              : const Text(
                                'Register',
                                style: TextStyle(color: Colors.white),
                              ),
                    );
                  },
                ),
                GestureDetector(
                  onTap: () {
                    context.goNamed(AppRoute.login.name);
                  },
                  child: Text(
                    "Go To Login Screen",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

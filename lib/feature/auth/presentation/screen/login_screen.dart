import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:study_case/core/di/injection.dart';
import 'package:study_case/core/extension/context_extension.dart';
import 'package:study_case/core/model/general_state.dart';
import 'package:study_case/core/service/go_router_service.dart';
import 'package:study_case/core/widget/custom_text_field.dart';
import 'package:study_case/feature/auth/presentation/bloc/auth_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isPasswordHidden = true;

  @override
  void dispose() {
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
            'Login',
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
                  controller: emailController,
                  labelText: 'Email',
                  prefixIcon: Icons.email_outlined,
                ),
                CustomTextField(
                  controller: passwordController,
                  labelText: 'Password',
                  obscureText: isPasswordHidden,
                  prefixIcon: Icons.lock_outline,
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
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      context.pushNamed(AppRoute.forgotPassword.name);
                    },
                    child: Text("Forgot Password?"),
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
                        message: 'Login Success',
                        color: Colors.green,
                      );
                      context.goNamed(AppRoute.home.name);
                    }
                  },
                  builder: (context, state) {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        final email = emailController.text;
                        final password = passwordController.text;

                        if (email.isEmpty || password.isEmpty) {
                          context.showSnackBar(
                            message: "Please fill all fields",
                            color: Colors.red,
                          );
                          return;
                        }

                        context.read<AuthBloc>().add(
                          AuthEventLogin(email: email, password: password),
                        );
                      },
                      child:
                          state.status == GeneralState.loading()
                              ? Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: const CircularProgressIndicator(),
                              )
                              : const Text(
                                'Login',
                                style: TextStyle(color: Colors.white),
                              ),
                    );
                  },
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              context.goNamed(AppRoute.register.name);
            },
            child: Text("Go To Register Screen", textAlign: TextAlign.center),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return OutlinedButton(
                  onPressed: () {
                    getIt<AuthBloc>().add(AuthEventSignInWithGoogle());
                  },
                  child:
                      state.status == GeneralState.loading()
                          ? Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const CircularProgressIndicator(),
                          )
                          : Text("Sign In With Google"),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

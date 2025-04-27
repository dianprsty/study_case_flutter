import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:study_case/core/service/go_router_service.dart';
import 'package:study_case/core/widget/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                  labelText: 'Email',
                  prefixIcon: Icons.email_outlined,
                ),
                CustomTextField(
                  labelText: 'Password',
                  prefixIcon: Icons.lock_outline,
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    context.goNamed(AppRoute.home.name);
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
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
        ],
      ),
    );
  }
}

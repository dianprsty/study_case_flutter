import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:study_case/core/service/go_router_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home Screen'),
            ElevatedButton(
              onPressed: () {
                context.goNamed(AppRoute.login.name);
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:study_case/core/extension/context_extension.dart';
import 'package:study_case/core/model/general_state.dart';
import 'package:study_case/core/service/go_router_service.dart';
import 'package:study_case/feature/auth/presentation/bloc/auth_bloc.dart';

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
                    message: 'Logout Success',
                    color: Colors.green,
                  );
                  context.goNamed(AppRoute.login.name);
                }
              },
              builder: (context, state) {
                return Column(
                  spacing: 16,
                  children: [
                    Text(state.user?.name ?? "-"),
                    ElevatedButton(
                      onPressed: () {
                        context.read<AuthBloc>().add(AuthEventLogout());
                      },
                      child: Text('Logout'),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

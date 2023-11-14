import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice/presentation/page/admin/register_employee_page.dart';
import 'package:practice/presentation/page/login_page.dart';
import 'package:practice/presentation/page/practice_page.dart';

final goRouter = GoRouter(
  initialLocation: '/login_page',
  routes: [
    GoRoute(
      path: '/login_page',
      name: 'login_page',
      pageBuilder: (context, state) {
        return MaterialPage(
            child: const LoginPage(),
            key: state.pageKey
        );
      },
    ),
    GoRoute(
      path: '/register_employee_page',
      name: 'register_employee_page',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const RegisterEmployeePage(),
        );
      },
    ),
    GoRoute(
      path: '/practice_page',
      name: 'practice_page',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const PracticePage(),
        );
      },
    ),
  ],
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: Scaffold(
      body: Center(
        child: Text(state.error.toString()),
      ),
    ),
  ),
);

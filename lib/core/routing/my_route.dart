import 'package:flutter/material.dart';
import 'package:project/auth/login/viewPage/login_page/login_main_page.dart';
import 'package:project/auth/registration/view/page/registration-page.dart';

class MyRoute {
  static List<Route<dynamic>> initialRoutes = [
    MaterialPageRoute(builder: (_) => const RegistrationPage()),
  ];

  static Route<dynamic>? onNavigateByName(RouteSettings settings) {
    switch (settings.name) {
      case 'registration':
        return MaterialPageRoute(builder: (_) => const RegistrationPage());
      case 'login':
        return MaterialPageRoute(builder: (_) => const LoginPage());
      default:
        return MaterialPageRoute(builder: (_) => const RegistrationPage());
    }
  }
}
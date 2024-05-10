import 'package:flutter/material.dart';
import 'package:project/auth/login/viewPage/component/login_bottom_page.dart';
import 'package:project/auth/login/viewPage/component/required_auth_widget_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: RequiredAuthDataWidget(),
        bottomNavigationBar: SizedBox(height: 100, child: LoginBottomNav()),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class LoginBottomNav extends StatelessWidget {
  const LoginBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            // Perform login action
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
          ),
          child: const Text("Login"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Forgot Password?"),
            TextButton(
              onPressed: () {
                // Perform change password action
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(3)),
              ),
              child: const Text("Change Password"),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Don't have an account?"),
            TextButton(
              onPressed: () {
                // Navigate to the registration page
                Navigator.pushNamed(context, 'registration');
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(3)),
              ),
              child: const Text("Create an account"),
            ),
          ],
        )
      ],
    );
  }
}
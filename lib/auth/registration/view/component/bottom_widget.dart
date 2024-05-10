import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/auth/registration/controller/cubit/registration_cubit.dart';

class BottomNav extends StatelessWidget {
  BottomNav({super.key, required this.controller});

  final RegistrationCubit controller;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: controller,
      child: BlocProvider<RegistrationCubit>(
        create: (context) => RegistrationCubit(),
        child: BlocBuilder<RegistrationCubit, RegistrationState>(
          builder: (context, state) {
            RegistrationCubit controller = context.read<RegistrationCubit>();

            return Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.onPressedConfirmButton;
                    // Navigate to the login page
                    Navigator.pushNamed(context, 'login');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  child: const Text("Confirm"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Have an account?"),
                    TextButton(
                      onPressed: () {
                        // Navigate to the login page
                        Navigator.pushNamed(context, 'login');
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(const EdgeInsets.all(3)),
                      ),
                      child: const Text("Login"),
                    ),
                  ],
                )
              ],
            );
          }
        ),
      ),
    );
  }
}
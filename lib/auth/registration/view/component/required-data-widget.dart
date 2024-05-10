import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/auth/registration/controller/cubit/registration_cubit.dart';
import 'package:project/core/utiless/validation.dart';

class RequiredDataWidget extends StatelessWidget{
  RequiredDataWidget({super.key, required this.controller});

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

            return Form(
              key: controller.formKey,
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
              
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller.firstNameController,
                    keyboardType: TextInputType.name,
                    validator: MyValidation().nameValidate,
                    decoration: InputDecoration(
                      label: const Text('first name'),
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: const Icon(Icons.abc),
                      hintText: 'xxxxx',
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 63, 51, 114),
                          width: 2
                        ),
                        borderRadius: BorderRadius.circular(30)
                      ),
              
                        
                      
                        focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 82, 164, 57),
                          width: 2
                        ),
                        borderRadius: BorderRadius.circular(30)
                      ),
                        errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 213, 30, 30),
                          width: 2
                        ),
              
                        
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),
                      
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller.lastNameController,
                    keyboardType: TextInputType.name,
                    validator: MyValidation().nameValidate,
                    decoration: InputDecoration(
                      label: const Text('last name'),
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: const Icon(Icons.abc),
                      hintText: 'YYYYY',
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 63, 51, 114),
                          width: 2
                        ),
                        borderRadius: BorderRadius.circular(30)
                      ),
              
                        
                      
                        focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 82, 164, 57),
                          width: 2
                        ),
                        borderRadius: BorderRadius.circular(30)
                      ),
                        errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 213, 30, 30),
                          width: 2
                        ),
              
                        
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),
                      
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller.mailController,
                    keyboardType: TextInputType.name,
                    validator: MyValidation().nameValidate,
                    decoration: InputDecoration(
                      label: const Text('mail'),
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: "xxx@gmail.com",
                      prefixIcon: const Icon(Icons.mail),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 63, 51, 114),
                          width: 2
                        ),
                        borderRadius: BorderRadius.circular(30)
                      ),
              
                        
                      
                        focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 82, 164, 57),
                          width: 2
                        ),
                        borderRadius: BorderRadius.circular(30)
                      ),
                        errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 213, 30, 30),
                          width: 2
                        ),
              
                        
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),
                      
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller.passwordController,
                    keyboardType: TextInputType.name,
                    validator: MyValidation().nameValidate,
                    decoration: InputDecoration(
                      label: const Text('password'),
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: 'password',
                      prefixIcon: const Icon(Icons.lock),
                
                      suffixIcon: const Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 63, 51, 114),
                          width: 2
                        ),
                        borderRadius: BorderRadius.circular(30)
                      ),
              
                        
                      
                        focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 82, 164, 57),
                          width: 2
                        ),
                        borderRadius: BorderRadius.circular(30)
                      ),
                        errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 213, 30, 30),
                          width: 2
                        ),
              
                        
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),
                    obscureText: true,
                    obscuringCharacter: "*",
                  )
                
                ],
              
              ),
            );
          },
        ),
      ),
    );
  }
}
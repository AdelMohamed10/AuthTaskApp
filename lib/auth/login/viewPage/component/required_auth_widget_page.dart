import 'package:flutter/material.dart';
import 'package:project/core/utiless/validation.dart';

class RequiredAuthDataWidget extends StatelessWidget {
  const RequiredAuthDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
        // Spacer(flex: 1,),

        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Welcome to ToDoList App",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 120,),

        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Login Page",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        // Spacer(flex: 1,),
        SizedBox(height: 40,),

        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: TextEditingController(),
          keyboardType: TextInputType.name,
          validator: MyValidation().nameValidate,
          decoration: InputDecoration(
            label: const Text('mail'),
            floatingLabelAlignment: FloatingLabelAlignment.center,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "Example@gmail.com",
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
          controller: TextEditingController(),
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

    );
  }
}
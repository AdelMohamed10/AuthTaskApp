
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/auth/onboarding/controller/cubit/onboarding_controller_cubit.dart';

class  OnBoardingBody extends StatelessWidget{
  OnBoardingBody({super.key, required this.controller});
  OnboardingControllerCubit controller;

  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            const Text("Welcome in our app to do list"),
            Expanded(
              child: BlocProvider<OnboardingControllerCubit>.value(
                value: controller,
                child: BlocBuilder<OnboardingControllerCubit, OnboardingControllerState>(
                  builder: (context, state) {
                    OnboardingControllerCubit controller=context.read<OnboardingControllerCubit>();
                    return PageView(
                      controller: controller.pageController,
                      children: List.generate(controller.data.length, (index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(controller.data[index].image),
                            Text(controller.data[index].title,
                            style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red,
                            ),
                            ),
                          Text(controller.data[index].suptitle,
                            style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color:Colors.grey
                            ),
                            ),
                            ],
                        );
                      }) , 
                      
                    );
                  },
                ),
              ),
            )
          ],
        );
    
  }
  
}
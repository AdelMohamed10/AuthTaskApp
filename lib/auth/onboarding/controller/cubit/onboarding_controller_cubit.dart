// import 'dart:ffi';
import 'dart:js';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/auth/onboarding/model/onboarding_model.dart';
import 'package:project/auth/registration/view/page/registration-page.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'onboarding_controller_state.dart';

class OnboardingControllerCubit extends Cubit<OnboardingControllerState> {
  OnboardingControllerCubit() : super(OnboardingControllerInitial());

  PageController pageController = PageController();

  void onChangeToNext() {
    pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.bounceIn);
  }
  Future<void> onCallSkip() async {
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();

    await sharedPreferences.setBool('onboarding', true);

    // Navigator.push(
    //   context as BuildContext, 
    //   MaterialPageRoute<Void>(builder: (BuildContext context) => const RegistrationPage(),),);
    
    Navigator.pushNamed(context as BuildContext, 'registration');
  
  }


    List data = [
  OnboardingModel(
    image: 'assets/First.jpeg',
    title: 'first',
    suptitle: 'First screen',
    color: Colors.green,
  ),
  OnboardingModel(
    image: 'assets/Second.jpeg',
    title: 'second',
    suptitle: 'Second screen',
    color: Colors.blue,
  ),
  OnboardingModel(
    image: 'assets/Third.jpeg',
    title: 'third',
    suptitle: 'Third screen',
    color: Colors.red,
  ),
];

}

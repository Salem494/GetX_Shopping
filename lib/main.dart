import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shopping_now/helper/binding.dart';
import 'package:get/get.dart';
import 'package:shopping_now/homeView.dart';
import 'package:shopping_now/view/Screens/onboarding_screen.dart';
import 'package:shopping_now/view_model/auth_control.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await  Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Shop',
      // initialRoute: OnBoardingScreen.routeName,
      initialBinding: Binding(),
    //   home: Scaffold(
    //     body: AuthControl(),
    //   // ),
      home: OnBoardingScreen(),
    // )
    );
  }
}


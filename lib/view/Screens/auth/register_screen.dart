import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_now/constant/colorConst.dart';
import 'package:shopping_now/homeView.dart';
import 'package:shopping_now/view/Screens/auth/login_screen.dart';
import 'package:shopping_now/view/Screens/home_screen.dart';
import 'package:shopping_now/view/Widgets/authentication/custom_form_felid.dart';
import 'package:shopping_now/view/Widgets/custom_text.dart';
import 'package:shopping_now/view_model/auth_model.dart';

class RegisterScreen extends GetWidget<AuthModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Get.to(LoginScreen());
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Image.asset('assets/signup.png'),
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              right: 20,
              left: 20,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomText(text: 'Name:',),
                  TextFormField(
                    onSaved: (value) {
                      controller.name = value!;
                    },
                    validator: (value) {
                      if (value == null) {
                        print('error');
                        return ('please Enter Name');
                      }
                    },
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomText(text: 'Email:',),
                  TextFormField(
                    onSaved: (value) {
                      controller.email = value!;
                    },
                    validator: (value) {
                      if (value == null) {
                        print('error');
                        return ('please Enter Email');
                      }
                    },
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomText(text: 'Password:',),
                  TextFormField(
                    onSaved: (value) {
                      controller.password = value!;
                    },
                    validator: (value) {
                      if (value == null) {
                        print('error');
                        return ('please Enter Password');
                      }
                    },
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    child: RaisedButton(
                      onPressed: () {
                        _formKey.currentState!.save();

                        if (_formKey.currentState!.validate()) {
                          controller.createWithEmailAndPassword();
                        }
                      },
                      child: Text('SIGN UP',style: GoogleFonts.cairo(
                        fontWeight: FontWeight.w700,
                        fontSize: 15
                      ),),
                    ),
                    decoration: BoxDecoration(
                        color: TextColor2,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

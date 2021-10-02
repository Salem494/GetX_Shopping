import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_now/constant/colorConst.dart';
import 'package:shopping_now/homeView.dart';
import 'package:shopping_now/view/Screens/auth/register_screen.dart';
import 'package:shopping_now/view/Widgets/authentication/custom_button_social.dart';
import 'package:shopping_now/view/Widgets/authentication/custom_form_felid.dart';
import 'package:shopping_now/view/Widgets/authentication/phone_number_auth.dart';
import 'package:shopping_now/view/Widgets/custom_text.dart';
import 'package:shopping_now/view_model/auth_model.dart';

class LoginScreen extends GetWidget<AuthModel> {

  final AuthModel authModel = Get.put(AuthModel());

  final GlobalKey<FormState> _formKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.only(
                top: 50,
                right: 20,
                left: 20,
              ),
              child: Form(
                key: _formKey,
                child: Column(children: [
                  Image.asset('assets/login.png'),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Column(
                      children: [
                        CustomText(
                          text: 'Email',
                          fontSize: 14,
                          color: Colors.grey.shade900,
                        ),
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
                        SizedBox(height: 15,),
                        CustomText(
                          text: 'Password',
                          fontSize: 14,
                          color: Colors.grey.shade900,
                        ),
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
                        CustomText(
                          text: 'Forgot Password?',
                          fontSize: 14,
                          alignment: Alignment.topRight,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          child: RaisedButton(
                            child: Text('SIGN IN'),
                            onPressed: () {
                              _formKey.currentState!.save();
                              if (_formKey.currentState!.validate()) {
                                controller.signInWithEmailAndPassword();
                              }
                            },
                          ),
                          decoration: BoxDecoration(
                              color: TextColor2,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              alignment: Alignment.center,
                              fontSize: 14,
                              text: 'If you haven\'t account ? ',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.offAll(RegisterScreen());
                                print('register Done ??/');
                              },
                              child: Container(
                                child: CustomText(
                                  text: 'register Here!',
                                  fontSize: 14,
                                  color: TextColor2,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomText(
                          text: '-OR-',
                          alignment: Alignment.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomButtonSocial(
                          text: 'Sign In with Facebook',
                          onPress: () {
                            print('faceBOOOk Done');
                            // controller.FaceBookSignIN();
                            _showDialog();
                          },
                          imageName: 'assets/facebook.png',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomButtonSocial(
                          onPress: () {
                            print('Google Done');
                            controller.GoogleSignIN();
                            Get.to(HomeView(),
                            duration: Duration(seconds: 10),
                            );
                          },
                          text: 'Sign In with Google',
                          imageName: 'assets/google.png',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ]),
              ),
            ))));
  }

  void _showDialog() async {
    await Get.dialog(AlertDialog(
      title: Text('Hmmmmmmmmmmm !'),
      content: Column(
        children: [
          SizedBox(height: 15,),
          Image.asset('assets/assets/error.jfif'),
          SizedBox(height: 40,),
          Text('للاسف ياحب انا ناسي فعلا باسورد الفيس اللي من خلالة هجيب ال\ FaceBook App ID',style: GoogleFonts.cairo(
            fontWeight: FontWeight.w600,
            fontSize: 13
          ),),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () => Get.back(), // Close the dialog
            child: Text('Exit',style: GoogleFonts.cairo(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: TextColor2
            ),))
      ],
    ));

    // Code that runs after the dialog disappears
    print('Dialog closed!');
  }


}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_now/view/Screens/done_screen.dart';


class ConfirmScreen extends StatefulWidget {
  static String routeName = '/confirm';

  @override
  _ConfirmScreenState createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
 late String name, email, address;
late  int phoneNumber;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'تأكيد طلبك',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        reverse: true,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.white,
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        onChanged: (val) {
                          setState(() {
                            name = val;
                          });
                        },
                        controller: nameController,
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.name,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return ('من فضلك ادخل الاسم');
                          }
                          return null;
                        },
                        onSaved: (val) => name = val!,
                        decoration: CustomInputDecoration('الاسم'),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        onChanged: (val) {
                          setState(() {
                            phoneNumber = int.parse(val);
                          });
                        },
                        controller: phoneController,
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.phone,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return ('من فضلك ادخل رقم التليفون');
                          } else if (val.length < 11 || val.length > 11) {
                            return ('رقم المحمول خطا');
                          }
                          return null;
                        },
                        onSaved: (val) => phoneNumber = val as int,
//                        controller: _controller,
                        decoration: CustomInputDecoration('رقم التليفون'),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        onChanged: (val) {
                          setState(() {
                            email = val;
                          });
                        },
                        controller: emailController,
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.emailAddress,
                        validator: (val) {
                          if (val!.isEmpty || !val.contains('@')) {
                            return ('من فضلك ادخل الايميل الصحيح');
                          }
                          return null;
                        },
                        onSaved: (val) => email = val!,
                        decoration: CustomInputDecoration('بريدك الالكتروني'),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        onChanged: (val) {
                          address = val;
                        },
                        controller: addressController,
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.streetAddress,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return ('من فضلك ادخل عنوانك');
                          }
                          return null;
                        },
                        onSaved: (val) => email = val!,
                        decoration: CustomInputDecoration('العنوان'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FlatButton(
                          color: Color(0xFF3D82AE),
                          textColor: Colors.white,
                          height: 50,
                          hoverColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                  width: 1, color: Colors.teal.shade600)),
                          onPressed: (){
                            Get.to(DoneScreen(),
                            duration: Duration(seconds: 4),
                              transition: Transition.upToDown,
                              fullscreenDialog: true,
                              curve: Curves.easeInOut
                            );
                          },
                          child: Text(
                            'اتمام عملية الشراء',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  InputDecoration CustomInputDecoration(String hintText) {
    return InputDecoration(
        enabledBorder:
        OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        hintText: hintText,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 1, color: Colors.teal.shade600)));
  }
}
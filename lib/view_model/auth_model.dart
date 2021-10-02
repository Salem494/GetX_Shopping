import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shopping_now/constant/colorConst.dart';
import 'package:shopping_now/homeView.dart';
import 'package:shopping_now/model/services/firestore_user.dart';
import 'package:shopping_now/model/user_model.dart';
import 'package:shopping_now/view/Screens/home_screen.dart';

class AuthModel extends GetxController {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email','https://www.googleapis.com/auth/drive']);
  FirebaseAuth _auth = FirebaseAuth.instance;
  FacebookAuth facebookAuth = FacebookAuth.instance;

  late Rx<User?> _user ;

  String? get user => _user.value!.email;

  late String email, password, name;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // _user.bindStream(_auth.authStateChanges());
  }

  void GoogleSignIN() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    print(googleUser);
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleUser!.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken
    );

    await _auth.signInWithCredential(credential).then((user) {
      savedData(user);
      Get.offAll(HomeView());
    });
  }


  void FaceBookSignIN() async {
    final LoginResult loginResult = await facebookAuth.login();
    final accessToken = loginResult.accessToken!.token;

    final faceCredential = FacebookAuthProvider.credential(accessToken);

    await _auth.signInWithCredential(faceCredential);

  }

  void PhoneNumberSignIN() async {}

  void signInWithEmailAndPassword() async {
    try {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((user) {
            print(user);
        savedData(user);
            Get.offAll(HomeView());
      });
    } catch (e) {
      print(e);
      Get.snackbar('Maybe Have any Problem', '${e}',
          duration: Duration(seconds: 5),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.grey,
          colorText: Colors.black);
    }
  }
  //
  void createWithEmailAndPassword() async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email , password: password)
          .then((user) async {
             print(user);
           savedData(user);
             Get.offAll(HomeView());
      });
    } catch (e) {
      print(e);
      Get.snackbar('Maybe Have any Problem', '${e}',
          duration: Duration(seconds: 5),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.grey,
          colorText: Colors.black);
    }
  }

  void savedData(UserCredential user) async {
    return await FireStoreUser().addUserTooFireStore(
        UserModel(
          userId: user.user!.uid,
          email: user.user!.email as String,
          // ignore: unnecessary_null_comparison
          name: name,
          pic: '',
        ));
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_now/constant/colorConst.dart';
import 'package:shopping_now/view/Screens/auth/login_screen.dart';

class ProfileScreen extends StatelessWidget {

  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(top: 35),
            child: Column(
              children: [
                Image.asset(
                  'assets/profile2.jpg',
                  fit: BoxFit.cover,
                  height: 180,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Salem El Helw',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: TextColor2),
                ),
                Text(
                  '+201068984178',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: TextColor2),
                )
              ],
            ),
            width: double.infinity,
            color: KPrimaryLightColor,
            height: MediaQuery.of(context).size.height * .4,
          ),
          ListTileWidget(
              'MyProfile', Icons.person, Icons.double_arrow_outlined),
          Divider(
            color: Colors.grey,
          ),
          ListTileWidget(
              'History', Icons.history, Icons.double_arrow_outlined),
          Divider(
            color: Colors.grey,
          ),
          ListTileWidget(
              'Settings', Icons.settings, Icons.double_arrow_outlined),
          Divider(
            color: Colors.grey,
          ),
          ListTileWidget('Help', Icons.help, Icons.double_arrow_outlined),
          Divider(
            color: Colors.grey,
          ),
          InkWell(
            onTap: (){
              Get.to(LoginScreen());
            },
            child: ListTile(
              title: Text(
                'Log Out',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.logout,
                color: Colors.red,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SoicalMediaWidget('assets/00.png'),
              SizedBox(
                width: 5,
              ),
              SoicalMediaWidget('assets/01.png'),
              SizedBox(
                width: 5,
              ),
              SoicalMediaWidget('assets/02.png'),
            ],
          ),
          SizedBox(height: 15,),
        ],
      ),
    );
  }
  Widget ListTileWidget(String title, IconData icon, IconData icon2) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: Icon(
        icon,
        color: TextColor2,
      ),
      trailing: Icon(icon2),
    );
  }

  Widget SoicalMediaWidget(String img) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        img,
        fit: BoxFit.cover,
        color: TextColor2,
        height: 25,
        width: 25,
      ),
    );
  }
}

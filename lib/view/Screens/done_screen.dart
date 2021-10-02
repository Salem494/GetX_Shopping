import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_now/homeView.dart';

class DoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton( icon: Icon(Icons.arrow_back),color: Colors.black54,onPressed: (){
          Get.to(HomeView());
        },),
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Image.asset('assets/0001.png'),
          SizedBox(height: 10),
          Text('تم تأكيد طلبك',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.black
          ),),
          SizedBox(height: 30,),
          Spacer(),
          SizedBox(
            width:170,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0,left: 15.0),
              child: FlatButton(
                onPressed:  (){
                  Get.to(HomeView());
                },
                color: Color(0xFF3D82AE),
                child: Container(
                  padding:EdgeInsets.all(10) ,
                  child: Text('اذهب للتسوق',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),textAlign: TextAlign.center,),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
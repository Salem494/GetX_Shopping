import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shopping_now/constant/colorConst.dart';
import 'package:shopping_now/view/Screens/cart_screen.dart';
import 'package:shopping_now/view/Screens/home_screen.dart';
import 'package:shopping_now/view/Screens/profile_screen.dart';

class HomeView extends StatefulWidget {
  static String routeName = '/ho';

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _page=1;

  List<Widget> tabs = [
    ProfileScreen(),
    Home(),
    CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:tabs[_page],
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        onTap: (index){
          setState(() {
            _page = index;
          });
        },
        items: [
          Icon(Icons.perm_identity_rounded,color: Colors.white,size: 25,),
          Icon(Icons.home,color: Colors.white,size: 25,),
          Icon(Icons.shopping_cart_outlined,color: Colors.white,size: 25),
        ],
        color: TextColor2,
        buttonBackgroundColor: TextColor,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        height: 60.0,
        animationDuration: Duration(milliseconds: 100),
      ),
    );
  }
}
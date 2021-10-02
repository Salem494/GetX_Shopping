import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_now/constant/colorConst.dart';
import 'package:shopping_now/model/product_model.dart';
import 'package:shopping_now/view/Screens/cart_screen.dart';
import 'package:shopping_now/view/Widgets/BestProduct_widget.dart';
import 'package:shopping_now/view/Widgets/ads_widgets.dart';
import 'package:shopping_now/view/Widgets/bulidSlider_widget.dart';
import 'package:shopping_now/view/Widgets/category_widget.dart';
import 'package:shopping_now/view/Widgets/offerProduct_widget.dart';
import 'package:get/get.dart';
import 'package:shopping_now/view/Widgets/searchBar_widgets.dart';
import 'package:shopping_now/view/Widgets/search_widget.dart';
import 'package:shopping_now/view_model/HomeView_model.dart';

class Home extends StatelessWidget {
  static const routeName = '/home-screen';

  late List<ProductModel> allProduct = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
                SizedBox(height: 35,),
                Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                             Get.to(CartScreen());
                            },
                            child: Row(
                              children: [
                                SizedBox(height: 10,),
                                Container(
                                    height: 20,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color:  Colors.red,
                                    ),
                                    child: Center(
                                      child: Text('0',style: TextStyle(color: Colors.white),),
                                    )),
                                Icon(
                                  Icons.shopping_cart,
                                  color: TextColor,
                                  size: 30,
                                ),
                                SizedBox(width: 45,),
                                InkWell(
                                    onTap: (){
                                    showSearch(context: context, delegate: DataSearching(search: allProduct));
                                    print('search ddeeed');
                                    },
                                    child: SearchBar()),
                              ],
                            ),
                          ),
                          // AutoCompleteExample()
                          // SearchBar(),
                        ],
                      )
                    ]
                ),
                SizedBox(height: 10,),
                BuildSlider(200.0),
                Ads(),
                Padding(
                  padding: EdgeInsets.only(right: 10, top: 8),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text('الأقسام',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: GoogleFonts.cairo(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black)),
                  ),
                ),
                BuildCategory(),
                bulidText('الأكثر مبيعا', () {}),
                BestCart(),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: bulidText('أحدث العروض', () {}),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: OfferCard(),
                ),
                Ads(),
                // Ads('adsDown', 150.0),
              ]),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 8,
          tooltip: 'اضافة للعربة',
          backgroundColor: Colors.white,
          onPressed: () {
            Get.to(CartScreen());
          },
          child: Container(
            height: 70,
            width: 40,
            child: Stack(
              children: [
                Positioned(
                  right: 1,
//                top: -2,
                  bottom: 25,
                  child: Container(
                      height: 18,
                      width: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.red,
                      ),
                      child: Center(
                        child: Text('0',style: TextStyle(color: Colors.white),),
                      )),
                ),
                Positioned(
                  bottom: 6,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Icon(
                      Icons.shopping_cart,
                      color: TextColor,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          ),
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

Widget bulidText(String title, Function press) {
  return Padding(
    padding: EdgeInsets.only(right: 10, left: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FlatButton(
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: TextColor, width: 1)),
            onPressed: () {
              press();
              print('salem');
            },
            hoverColor: TextColor,
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: TextColor,
                  size: 18,
                ),
                Text(
                  ' عرض الكل',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: TextColor,
                      fontSize: 18),
                ),
              ],
            )),
        Text(title,
            style: GoogleFonts.cairo(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.black)),
      ],
    ),
  );
}

}

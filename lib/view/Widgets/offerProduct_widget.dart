import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_now/main.dart';
import 'package:shopping_now/model/product_model.dart';
import'package:get/get.dart';
import 'package:shopping_now/view/Screens/details_screen.dart';

class OfferCard extends StatelessWidget {

  bool done = true;

  List<ProductModel> bestProduct = [
    ProductModel(name: 'Blue t-Shirt',price: 23.0,sized: '40',desc: 'Beau t-shirt',image: 'assets/assets/t-shirt6.jpg'),
    ProductModel(name: 'running shoes',price: 50.0,sized: '10',desc: 'Beau shoes',image: 'assets/assets/shoes2.png'),
    ProductModel(name: 'Beauty Jacket',price: 70.0,sized: '7',desc: 'Beau Jacket',image: 'assets/assets/jacket2.jpg'),
    ProductModel(name: 'Beau Trousers',price: 18.0,sized: '11',desc: 'Beau trousers',image: 'assets/assets/trouser3.jpg'),
    ProductModel(name: 'Women Hat',price: 10.0,sized: '18',desc: 'Beau Hat',image: 'assets/assets/003.jfif'),
    ProductModel(name: 'Black Cap',price: 23.0,sized: '22',desc: 'Beau Cap',image: 'assets/assets/001.jfif'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 200,
        width: 500,
        child: ListView.builder(
          itemCount: bestProduct.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  Get.to(
                    DetailsScreen(model:bestProduct[index]),
                      duration: Duration(seconds:4),
                      fullscreenDialog: true,
                      transition: Transition.zoom,
                      curve: Curves.bounceInOut
                  );
                },
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Stack(
                        children: [
                          Image.asset(
                            bestProduct[index].image,
                            fit: BoxFit.cover,
                            height: 150,
                          ),
                          Transform.rotate(
                            angle: -0.3,
                            origin: Offset(-12, 0),
                            alignment: Alignment.topRight,
                            child: Container(
                              child: Center(
                                  child: Text(
                                      '%${bestProduct[index].sized}  وفر',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold))),
                              width: 70,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        // products is out demo list
                        bestProduct[index].name,
                        style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 15),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            // products is out demo list
                            '${122}',
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.red,
                                fontSize: 18),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            // products is out demo list
                            '\$ ${bestProduct[index].price}',
                            style:
                            TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ],
                      ),
                    ]
                )
            );
          }
            ),

      ),
    );
  }
}
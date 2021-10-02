import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_now/constant/colorConst.dart';
import 'package:shopping_now/model/product_model.dart';
import 'package:shopping_now/model/services/data_dummy.dart';
import 'package:shopping_now/view/Widgets/custom_text.dart';
import 'package:get/get.dart';
import 'package:shopping_now/view_model/cartControl.dart';

import '../../homeView.dart';

class DetailsScreen extends StatelessWidget {
  final ProductModel model;
  DetailsScreen({required this.model});

  final cartController = Get.put(CartController());
  DummyData dummy = DummyData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed:(){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: Colors.black,size: 18,),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Column(children: [
          Container(
            padding: EdgeInsets.only(top: 30),
            width: MediaQuery.of(context).size.width,
            height: 250,
              child: Image.asset(
              model.image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(18),
              child: Column(
                children: [
                  CustomText(
                    text: model.name,
                    fontSize: 26,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        width: MediaQuery.of(context).size.width * .4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.grey,
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomText(
                              text: 'Size',
                            ),
                            CustomText(
                              text: model.sized,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        width: MediaQuery.of(context).size.width * .44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.grey,
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomText(
                              text: 'Color',
                            ),
                            Container(
                              width: 30,
                              height: 20,
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: TextColor,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    text: 'Details',
                    fontSize: 18,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomText(
                    text: model.desc,
                    fontSize: 18,
                    height: 2.5,
                  )
                ],
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CustomText(
                          text: "PRICE ",
                          fontSize: 22,
                          color: Colors.grey,
                        ),
                        CustomText(
                          text: '\$${model.price}',
                          color: TextColor,
                          fontSize: 18,
                        )
                      ],
                    ),
                    GetBuilder<CartController>(
                      init: CartController(),
                      builder: (controller)=>Container(
                        decoration: BoxDecoration(
                            color: TextColor2,
                            borderRadius: BorderRadius.circular(10)),
                        child: RaisedButton(
                          color: TextColor2,
                          onPressed: () {
                            controller.addProduct(
                                model.name,
                                model.sized,
                                model.image,
                                model.desc,
                                model.price);
                          },
                          child: Text('Add To Card',style: GoogleFonts.cairo(
                              color: Colors.white,
                              fontSize: 15
                          ),),
                        ),
                      ),
                    ),
                  ])),
        ])),
      ),
    );
  }
}

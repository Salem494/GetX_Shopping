import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_now/model/services/data_dummy.dart';
import 'package:shopping_now/view/Screens/details_screen.dart';
import 'package:shopping_now/view_model/HomeView_model.dart';
import 'package:get/get.dart';

class BestCart extends GetWidget<HomeViewModel> {

  final HomeViewModel homeViewModel = Get.put(HomeViewModel());

   DummyData dummyData = DummyData();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
    builder: (controller)=> dummyData.items.isEmpty? Center(child: CircularProgressIndicator(),)
        :Container(
          height: 250,
          child: GridView.builder(
              itemCount:8,
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3/2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  crossAxisCount: 1
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                onTap: (){
                  Get.to(DetailsScreen(
                  model: dummyData.items[index],
                  ));
    },
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 150,
                        child: Image.asset(
                          dummyData.items[index].image,
                          fit: BoxFit.cover,
                          // height: double.infinity,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        dummyData.items[index].name,
                        style: GoogleFonts.cairo(fontWeight: FontWeight.w700,fontSize: 18, color: Colors.black),
                      ),
                      Text(
                        // products is out demo list
                        ' \$ ${ dummyData.items[index].price}',
                        style: GoogleFonts.cairo(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 15),
                      ),
                    ],
                  ),
                );
    //         return Text(controller.productModel[index].name);
              }),
        )
  );
}
}
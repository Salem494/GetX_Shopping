import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_now/constant/colorConst.dart';
import 'package:shopping_now/model/services/data_dummy.dart';
import 'package:shopping_now/view/Screens/cofirm_screen.dart';
import 'package:shopping_now/view/Screens/details_screen.dart';
import 'package:shopping_now/view_model/cartControl.dart';

class CartScreen extends StatelessWidget {

  final cartController = Get.put(CartController());
  DummyData dummy = DummyData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
           Get.back();
          },
          icon: Icon(Icons.arrow_back,color: Colors.black87,size: 18,),
        ),
        backgroundColor: Colors.transparent,
        title: Text('سلة التسوق',style: GoogleFonts.cairo(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Colors.black87
        ),),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SizedBox(
              height: 500,
              child: GetBuilder<CartController>(
                builder: (value)=>ListView.builder(
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: dummy.items.length,
                    itemBuilder:(context,index){
                      return Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ListTile(
                            dense: true,
                            leading: Image.asset(dummy.items[index].image,fit: BoxFit.cover,height: 100,width: 100,),
                            title: Text( dummy.items[index].name,style: GoogleFonts.cairo(
                                fontSize: 15,
                                fontWeight: FontWeight.w900
                            ),),
                            subtitle: Text('\$ ${ dummy.items[index].price}',style: GoogleFonts.cairo(
                                fontSize: 11,
                                fontWeight: FontWeight.w900
                            ),),
                            trailing: Container(
                                width: 110,
                                child: Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.arrow_back_ios),
                                      onPressed: (){
                                        value.decrement();
                                      },
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    Text(cartController.quintity.toString(),style: TextStyle(
                                      fontSize:15
                                    ),),
                                    IconButton(
                                      icon: Icon(Icons.arrow_forward_ios),
                                      onPressed: () {
                                        value.increment();
                                      },
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ],
                                )
                            )
                        ),
                      );
                    }),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child:InkWell(
                onTap: (){
                  Get.to(ConfirmScreen(),
                      duration: Duration(seconds:4),
                      fullscreenDialog: true,
                      transition: Transition.zoom,
                      curve: Curves.easeInOut
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 60,
                  decoration: BoxDecoration(
                    color: TextColor2,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(
                    child: Text('Order',style: GoogleFonts.cairo(
                      fontSize: 25,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}


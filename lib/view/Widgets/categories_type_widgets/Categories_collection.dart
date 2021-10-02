import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_now/homeView.dart';
import 'package:shopping_now/model/product_model.dart';
import 'package:shopping_now/view/Screens/cart_screen.dart';
import 'package:shopping_now/view/Screens/details_screen.dart';

// ignore: must_be_immutable
class tShirtsWidget extends StatelessWidget {

  List<ProductModel> tshirts= [
    ProductModel(name: 't-shirt',price: 25.0,desc:' A Beauty Shirt - it is good Quality!',sized: 'xl',image: 'assets/assets/t-shirt1.jpg'),
    ProductModel(name: 't-shirt',price: 22.0,desc:' A Beauty Shirt - it is good Quality!',sized: 'l',image: 'assets/assets/t-shirt2.jpg'),
    ProductModel(name: 't-shirt',price: 27.0,desc:' A Beauty Shirt - it is good Quality!',sized: 'xxl',image: 'assets/assets/t-shirt3.jpg'),
    ProductModel(name: 't-shirt',price: 18.0,desc:' A Beauty Shirt - it is good Quality!',sized: 'm',image: 'assets/assets/t-shirt4.jpg'),
    ProductModel(name: 't-shirt',price: 26.0,desc:' A Beauty Shirt - it is good Quality!',sized: 'xxl',image: 'assets/assets/t-shirt5.jpg'),
    ProductModel(name: 't-shirt',price: 33.0,desc:' A Beauty Shirt - it is good Quality!',sized: 'xxxl',image: 'assets/assets/t-shirt6.jpg'),
    ProductModel(name: 't-shirt',price: 35.0,desc:' A Beauty Shirt - it is good Quality!',sized: 'xl',image: 'assets/assets/t-shirt2.jpg'),
    ProductModel(name: 't-shirt',price: 37.0,desc:' A Beauty Shirt - it is good Quality!',sized: 'xxxl',image: 'assets/assets/t-shirt1.jpg'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text('T-Shirt Collection',style: GoogleFonts.cairo(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w700
        ),),
        leading: IconButton(
          onPressed: (){
            print('salemmefm');
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: Colors.black,size: 20,),
        ),
        actions: [
          IconButton(
            onPressed: (){
              print('salemmefm');
              Get.to(CartScreen());
            },
            icon: Icon(Icons.shopping_cart_outlined,color: Colors.black,size: 25,),
          ),
        ],
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 2/3,
       crossAxisSpacing: 20.0,
       mainAxisSpacing: 20.0,
       crossAxisCount: 2,
      ),
          itemCount:tshirts.length,
          itemBuilder: (context,index){
           return  GestureDetector(
              onTap: (){
                Get.offAll(DetailsScreen(
                  model:tshirts[index],
                ));
              },
              child: Card(
                shadowColor: Colors.grey,
                elevation: 9,
                margin: EdgeInsets.all(0.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 150,
                      child: Image.asset(
                        tshirts[index].image,
                        fit: BoxFit.cover,
                        // height: double.infinity,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      tshirts[index].name,
                      style: GoogleFonts.cairo(fontWeight: FontWeight.w700,fontSize: 18, color: Colors.black),
                    ),
                    SizedBox(height: 5,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              // products is out demo list
                              ' \$ ${tshirts[index].price}',
                              style: GoogleFonts.cairo(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 18),
                            ),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.shopping_cart_outlined,size: 20,color: Colors.black,),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}


// ignore: camel_case_types
class jacketsWidgets extends StatelessWidget {

  List<ProductModel> Jacketss= [
    ProductModel(name: 'Jackets',price: 150.0,desc:' A Beauty Jackets - it is good Quality!',sized: 'Xl',image: 'assets/assets/jacket1.jpg'),
    ProductModel(name: 'Jackets',price: 180.0,desc:' A Beauty Jackets - it is good Quality!',sized: 'XL',image: 'assets/assets/jacket2.jpg'),
    ProductModel(name: 'Jackets',price: 200.0,desc:' A Beauty Jackets - it is good Quality!',sized: 'XXL',image: 'assets/assets/jacket3.jpg'),
    ProductModel(name: 'Jackets',price: 187.0,desc:' A Beauty Jackets - it is good Quality!',sized: 'M',image: 'assets/assets/jacket4.jpg'),
    ProductModel(name: 'Jackets',price: 350.0,desc:' A Beauty Jackets - it is good Quality!',sized: 'xxl',image: 'assets/assets/jacket5.jpg'),
    ProductModel(name: 'Jackets',price: 140.0,desc:' A Beauty Jackets - it is good Quality!',sized: 'xxxl',image: 'assets/assets/jacket6.jpg'),
    ProductModel(name: 'Jackets',price: 303.0,desc:' A Beauty Jackets - it is good Quality!',sized: 'xl',image: 'assets/assets/jacket7.jpg'),
    ProductModel(name: 'Jackets',price: 190.0,desc:' A Beauty Jackets - it is good Quality!',sized: 'xxxl',image: 'assets/assets/jacket8.png'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              print('salemmefm');
              Get.to(CartScreen());
            },
            icon: Icon(Icons.shopping_cart_outlined,color: Colors.black,size: 25,),
          ),
        ],
        title: Text('T-Shirt Collection',style: GoogleFonts.cairo(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w700
        ),),
        leading: IconButton(
          onPressed: (){
            print('salemmefm');
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: Colors.black,size: 18,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio:2/3,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0,
              crossAxisCount: 2,
            ),
            itemCount:Jacketss.length,
            itemBuilder: (context,index){
              return  GestureDetector(
                onTap: (){
                  Get.offAll(DetailsScreen(
                    model:Jacketss[index],
                  ));
                },
                child: Card(
                  shadowColor: Colors.grey,
                  elevation: 9,
                  margin: EdgeInsets.all(0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 150,
                        child: Image.asset(
                          Jacketss[index].image,
                          fit: BoxFit.cover,
                          // height: double.infinity,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        Jacketss[index].name,
                        style: GoogleFonts.cairo(fontWeight: FontWeight.w700,fontSize: 18, color: Colors.black),
                      ),
                      SizedBox(height: 5,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                // products is out demo list
                                ' \$ ${Jacketss[index].price}',
                                style: GoogleFonts.cairo(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontSize: 18),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.shopping_cart_outlined,size: 20,color: Colors.black,),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              );
            }),
      ),
    );
  }
}


// ignore: camel_case_types
class shoesWidgets extends StatelessWidget {

  List<ProductModel> shoes= [
    ProductModel(name: 'Shoes',price: 80.0,desc:' A Beauty shoes - it is good Quality!',sized: '43,44,45',image: 'assets/assets/shoe1.jpg'),
    ProductModel(name: 'Shoes',price: 87.0,desc:' A Beauty shoes - it is good Quality!',sized: '43,44,45',image: 'assets/assets/shoe2.jpg'),
    ProductModel(name: 'Shoes',price: 90.0,desc:' A Beauty shoes - it is good Quality!',sized: '43,44,45',image: 'assets/assets/shoe3.jpg'),
    ProductModel(name: 'Shoes',price: 58.0,desc:' A Beauty shoes - it is good Quality!',sized: '43,44,45',image: 'assets/assets/shoe4.jpg'),
    ProductModel(name: 'Shoes',price: 66.0,desc:' A Beauty shoes - it is good Quality!',sized: '43,44,45',image: 'assets/assets/shoe5.jpg'),
    ProductModel(name: 'Shoes',price: 74.0,desc:' A Beauty shoes - it is good Quality!',sized: '44',image: 'assets/assets/shoe6.jpg'),
    ProductModel(name: 'Shoes',price: 90.0,desc:' A Beauty shoes - it is good Quality!',sized: '46',image: 'assets/assets/shoe3.jpg'),
    ProductModel(name: 'Shoes',price: 55.0,desc:' A Beauty shoes - it is good Quality!',sized: '34',image: 'assets/assets/shoe1.jpg'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              print('salemmefm');
              Get.to(CartScreen());
            },
            icon: Icon(Icons.shopping_cart_outlined,color: Colors.black,size: 25,),
          ),
        ],
        title: Text('T-Shirt Collection',style: GoogleFonts.cairo(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w700
        ),),
        leading: IconButton(
          onPressed: (){
            print('salemmefm');
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: Colors.black,size: 18,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2/3,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0,
              crossAxisCount: 2,
            ),
            itemCount:shoes.length,
            itemBuilder: (context,index){
              return  GestureDetector(
                onTap: (){
                  Get.offAll(DetailsScreen(
                    model:shoes[index],
                  ));
                },
                child: Card(
                  shadowColor: Colors.grey,
                  elevation: 9,
                  margin: EdgeInsets.all(0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 150,
                        child: Image.asset(
                          shoes[index].image,
                          fit: BoxFit.cover,
                          // height: double.infinity,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        shoes[index].name,
                        style: GoogleFonts.cairo(fontWeight: FontWeight.w700,fontSize: 18, color: Colors.black),
                      ),
                      SizedBox(height: 5,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                // products is out demo list
                                ' \$ ${shoes[index].price}',
                                style: GoogleFonts.cairo(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontSize: 18),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.shopping_cart_outlined,size: 20,color: Colors.black,),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}


// ignore: camel_case_types
class trousersWidgets extends StatelessWidget {

  List<ProductModel> trousers= [
    ProductModel(name: 'trousers',price: 80.0,desc:' A Beauty trousers - it is good Quality!',sized: '44,46',image: 'assets/assets/trouser1.jpg'),
    ProductModel(name: 'trousers',price: 87.0,desc:' A Beauty trousers - it is good Quality!',sized: '60,62,64',image: 'assets/assets/trouser2.jpg'),
    ProductModel(name: 'trousers',price: 90.0,desc:' A Beauty trousers - it is good Quality!',sized: '55,58,60',image: 'assets/assets/trouser3.jpg'),
    ProductModel(name: 'trousers',price: 58.0,desc:' A Beauty trousers - it is good Quality!',sized: '65',image: 'assets/assets/trouser4.jpg'),
    ProductModel(name: 'trousers',price: 66.0,desc:' A Beauty trousers - it is good Quality!',sized: '60,62,64',image: 'assets/assets/trouser1.jpg'),
    ProductModel(name: 'trousers',price: 74.0,desc:' A Beauty trousers - it is good Quality!',sized: '60',image: 'assets/assets/trouser6.jpg'),
    ProductModel(name: 'trousers',price: 90.0,desc:' A Beauty trousers - it is good Quality!',sized: '56',image: 'assets/assets/trouser7.jpg'),
    ProductModel(name: 'trousers',price: 55.0,desc:' A Beauty trousers - it is good Quality!',sized: '55',image: 'assets/assets/trouser2.jpg'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text('Trousers Collection',style: GoogleFonts.cairo(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w700
        ),),
        leading: IconButton(
          onPressed: (){
            print('salemmefm');
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: Colors.black,size: 18,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2/3,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0,
              crossAxisCount: 2,
            ),
            itemCount:trousers.length,
            itemBuilder: (context,index){
              return  GestureDetector(
                onTap: (){
                  Get.offAll(DetailsScreen(
                    model:trousers[index],
                  ));
                },
                child: Card(
                  shadowColor: Colors.grey,
                  elevation: 9,
                  margin: EdgeInsets.all(0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 150,
                        child: Image.asset(
                          trousers[index].image,
                          fit: BoxFit.cover,
                          // height: double.infinity,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        trousers[index].name,
                        style: GoogleFonts.cairo(fontWeight: FontWeight.w700,fontSize: 18, color: Colors.black),
                      ),
                      SizedBox(height: 5,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                // products is out demo list
                                ' \$ ${trousers[index].price}',
                                style: GoogleFonts.cairo(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontSize: 18),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.shopping_cart_outlined,size: 20,color: Colors.black,),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}


class CatWidgets extends StatelessWidget {

  List<ProductModel> caps= [
    ProductModel(name: 'Black Cap',price: 11.0,desc:' A Beauty Cap - it is good Quality!',sized: '',image: 'assets/assets/001.jfif'),
    ProductModel(name: 'Blue Cap',price: 12.2,desc:' A Beauty Cap - it is good Quality!',sized: '',image: 'assets/assets/002.jfif'),
    ProductModel(name: 'Women Hat',price: 17.0,desc:' A Beauty Cap - it is good Quality!',sized: '',image: 'assets/assets/003.jfif'),
    ProductModel(name: 'Beau Hat',price: 10.0,desc:' A Beauty Cap - it is good Quality!',sized: '',image: 'assets/assets/004.jpg'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              print('salemmefm');
              Get.to(CartScreen());
            },
            icon: Icon(Icons.shopping_cart_outlined,color: Colors.black,size: 25,),
          ),
        ],

        title: Text('Hats Collection',style: GoogleFonts.cairo(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w700
        ),),
        leading: IconButton(
          onPressed: (){
            print('salemmefm');
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: Colors.black,size: 18,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2/3,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              crossAxisCount: 2,
            ),
            itemCount:caps.length,
            itemBuilder: (context,index){
              return  GestureDetector(
                onTap: (){
                  Get.offAll(DetailsScreen(
                    model:caps[index],
                  ));
                },
                child: Card(
                  shadowColor: Colors.grey,
                  elevation: 9,
                  margin: EdgeInsets.all(0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 150,
                        child: Image.asset(
                          caps[index].image,
                          fit: BoxFit.cover,
                          // height: double.infinity,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        caps[index].name,
                        style: GoogleFonts.cairo(fontWeight: FontWeight.w700,fontSize: 18, color: Colors.black),
                      ),
                      SizedBox(height: 5,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                // products is out demo list
                                ' \$ ${caps[index].price}',
                                style: GoogleFonts.cairo(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontSize: 18),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.shopping_cart_outlined,size: 20,color: Colors.black,),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}

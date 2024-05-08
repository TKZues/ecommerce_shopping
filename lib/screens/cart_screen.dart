import 'package:ecommerce_shopping/screens/payment_method_screen.dart';
import 'package:ecommerce_shopping/utils/color.dart';
import 'package:ecommerce_shopping/utils/dimention.dart';
import 'package:ecommerce_shopping/widget/container_button_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  List tabs = [
    "All",
    "Category",
    "Top",
    "Recommended"
  ];
  List images = [
    "images/image1.jpg",
    "images/image2.jpg",
    "images/image3.jpg",
    "images/image4.jpg"
  ];
  List productTitles = [
    "Warm Zipper",
    "Knitted Woo",
    "Zipper Win",
    "Child Win"
  ];
  List prices = [
    "\$300",
    "\$330",
    "\$450",
    "\$120"
  ];
  List review = [
    "34",
    "123",
    "45",
    "12"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Dimensions.height20),
          child: Column(
            children: [
              Container(
                height: Dimensions.height100*4.1,
                child: ListView.builder(
                  itemCount: images.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Checkbox(
                              splashRadius: 20,
                                value: true,
                                activeColor: AppColors.mainColor,
                                onChanged: (val){

                                }
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(Dimensions.radius15),
                              child: Image.asset(images[index], height: Dimensions.height70,width:Dimensions.height70,fit:  BoxFit.cover,),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  productTitles[index],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: Dimensions.font18,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                                SizedBox(height: Dimensions.height10,),
                                Text("Hooded Jacket", style: TextStyle(
                                  fontSize: Dimensions.font10,
                                  color: Colors.black26,
                                ),),
                                SizedBox(height: Dimensions.height10,),
                                Text(
                                  prices[index],
                                  style: TextStyle(
                                    fontSize: Dimensions.font18,
                                    color: AppColors.mainColor,
                                    fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(CupertinoIcons.minus, color: Colors.green,),
                                SizedBox(width: Dimensions.width2,),
                                Text(
                                  "1",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: Dimensions.font18
                                  ),
                                ),
                                SizedBox(width: Dimensions.width2,),
                                Icon(CupertinoIcons.plus, color: AppColors.mainColor,)
                              ],
                            )
                          ],
                        ),
                      );
                    },
                ),
              ),
              SizedBox(height: Dimensions.height10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Select all", style: TextStyle(
                    fontSize: Dimensions.font18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),),
                  Checkbox(
                    splashRadius: 20,
                      value: false,
                      activeColor: AppColors.mainColor,
                      onChanged: (value) {

                      },
                  )
                ],
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Payment",
                    style: TextStyle(
                        fontSize: Dimensions.font20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                  Text(
                    "\$300.50",
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.bold,
                      fontSize: Dimensions.font20
                    ),
                  ),

                ],
              ),
              SizedBox(height: Dimensions.height10,),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => PaymentMethodScreen(),)
                  );
                },
                child: ContainerButtonModer(
                  itext: "Payment",
                  bgColor: AppColors.mainColor,
                  containerWidth: Dimensions.screenWidth,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

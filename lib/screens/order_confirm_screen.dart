import 'package:ecommerce_shopping/utils/color.dart';
import 'package:ecommerce_shopping/utils/dimention.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/container_button_modal.dart';
import 'order_success_screen.dart';

class OrderConfirmScreen extends StatelessWidget {
  const OrderConfirmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Order"),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(Dimensions.height20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shipping Address",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: Dimensions.font18,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: Dimensions.height10,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.height15),
                  width: Dimensions.screenWidth,
                  height: Dimensions.height100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.radius15),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          color: Colors.black26,
                          spreadRadius: 2
                      )
                    ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Dear Pro",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w400,
                                fontSize: Dimensions.font14
                            ),
                          ),
                          TextButton(
                              onPressed: () {

                              },
                              child: Text(
                                "Change",
                                style: TextStyle(
                                  fontSize: Dimensions.font14,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.mainColor
                                ),
                              )
                          )
                        ],
                      ),
                      Text(
                        "3 Newbridge Court\nChino Hills,CA, 97545, United States"
                      )
                    ],
                  ),
                ),
                SizedBox(height: Dimensions.height20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Dear Pro",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: Dimensions.font18
                      ),
                    ),
                    TextButton(
                        onPressed: () {

                        },
                        child: Text(
                          "Change",
                          style: TextStyle(
                              fontSize: Dimensions.font14,
                              fontWeight: FontWeight.bold,
                              color: AppColors.mainColor
                          ),
                        )
                    )
                  ],
                ),
                SizedBox(height: Dimensions.height10,),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(Dimensions.height10/2),
                      width: Dimensions.width80,
                      height: Dimensions.height50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(Dimensions.radius15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 3,
                                spreadRadius: 2
                            )
                          ]
                      ),
                      child: Image.asset(
                          "images/mastercard.png"
                      ),
                    ),
                    SizedBox(width: Dimensions.width10,),
                    Text("**** **** **** 3947")
                  ],
                ),
                SizedBox(height: Dimensions.height20,),
                Text(
                  "Dear Pro",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: Dimensions.font18
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(Dimensions.height10/2),
                      width: Dimensions.width100,
                      height: Dimensions.height60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(Dimensions.radius15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 3,
                                spreadRadius: 2
                            )
                          ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("images/icon3.png"),
                          Text("2-7 Days")
                        ],
                      )
                    ),
                    SizedBox(width: Dimensions.width20,),
                    Container(
                        padding: EdgeInsets.all(Dimensions.height10/2),
                        width: Dimensions.width120,
                        height: Dimensions.height60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(Dimensions.radius15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 3,
                                  spreadRadius: 2
                              )
                            ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Home Delivery",style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: Dimensions.font16
                            ),),
                            Text("2-7 Days")
                          ],
                        )
                    ),

                  ],
                ),
                SizedBox(height: Dimensions.height10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sub-Total",
                      style: TextStyle(
                          fontSize:Dimensions.font16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey
                      ),
                    ),
                    Text(
                      "\$300.50",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Dimensions.font16
                      ),
                    )
                  ],
                ),
                SizedBox(height: Dimensions.height20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sipping Free",
                      style: TextStyle(
                          fontSize:Dimensions.font16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey
                      ),
                    ),
                    Text(
                      "\$15.00",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Dimensions.font16
                      ),
                    )
                  ],
                ),
                Divider(
                  height: Dimensions.height20,
                  thickness: 1,
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Payment",
                      style: TextStyle(
                          fontSize:Dimensions.font16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),
                    ),
                    Text(
                      "\$300.50",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Dimensions.font16,
                          color: AppColors.mainColor
                      ),
                    )
                  ],
                ),
                SizedBox(height: Dimensions.height50,),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OrderSuccessScreen(),)
                    );
                  },
                  child: ContainerButtonModer(
                      itext: "Confirm Order",
                      bgColor: AppColors.mainColor
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

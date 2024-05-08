import 'package:ecommerce_shopping/screens/shipping_address.dart';
import 'package:ecommerce_shopping/utils/color.dart';
import 'package:ecommerce_shopping/utils/dimention.dart';
import 'package:ecommerce_shopping/widget/container_button_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int _type =1;
  void _handleRadio(Object? e) => setState(() {
    _type = e as int;
  });


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Method"),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Dimensions.height20),
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: Dimensions.height50,
                    width: Dimensions.screenWidth,
                    decoration: BoxDecoration(
                      border: _type ==1
                          ?Border.all(width: 1, color: AppColors.mainColor)
                          :Border.all(width: 0.3, color: Colors.grey),
                      borderRadius: BorderRadius.circular(Dimensions.radius15/3)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Radio(
                                    value: 1,
                                    groupValue: _type,
                                    onChanged: _handleRadio,
                                  activeColor: AppColors.mainColor,
                                ),
                                Text(
                                  "Amazon Pay",
                                  style: _type==1? TextStyle(fontSize: Dimensions.font16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                  ):TextStyle(
                                    fontWeight: FontWeight.w500,
                                      fontSize: Dimensions.font16,
                                    color: Colors.grey
                                  ),
                                ),
          
                              ],
                            ),
                            Image.asset(
                              "images/amazon-pay.png",
                              width: Dimensions.height70,
          
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Dimensions.height20,),
                  Container(
                    height: Dimensions.height50,
                    width: Dimensions.screenWidth,
                    decoration: BoxDecoration(
                        border: _type ==2
                            ?Border.all(width: 1, color: AppColors.mainColor)
                            :Border.all(width: 0.3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(Dimensions.radius15/3)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 2,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: AppColors.mainColor,
                                ),
                                Text(
                                  "Credit card",
                                  style: _type==2? TextStyle(fontSize: Dimensions.font16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                  ):TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: Dimensions.font16,
                                      color: Colors.grey
                                  ),
                                ),
          
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "images/visa.png",
                                  width: Dimensions.width20,
          
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width: Dimensions.width10,),
                                Image.asset(
                                  "images/mastercard.png",
                                  width: Dimensions.width20,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Dimensions.height20,),
                  Container(
                    height: Dimensions.height50,
                    width: Dimensions.screenWidth,
                    decoration: BoxDecoration(
                        border: _type ==3
                            ?Border.all(width: 1, color: AppColors.mainColor)
                            :Border.all(width: 0.3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(Dimensions.radius15/3)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 3,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: AppColors.mainColor,
                                ),
                                Text(
                                  "Paypal",
                                  style: _type==3? TextStyle(fontSize: Dimensions.font16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                  ):TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: Dimensions.font16,
                                      color: Colors.grey
                                  ),
                                ),
          
                              ],
                            ),
                            Image.asset(
                              "images/paypal.png",
                              width: Dimensions.height70,
          
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Dimensions.height20,),
                  Container(
                    height: Dimensions.height50,
                    width: Dimensions.screenWidth,
                    decoration: BoxDecoration(
                        border: _type ==4
                            ?Border.all(width: 1, color: AppColors.mainColor)
                            :Border.all(width: 0.3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(Dimensions.radius15/3)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 4,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: AppColors.mainColor,
                                ),
                                Text(
                                  "Google Pay",
                                  style: _type==4? TextStyle(fontSize: Dimensions.font16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                  ):TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: Dimensions.font16,
                                      color: Colors.grey
                                  ),
                                ),
          
                              ],
                            ),
                            Image.asset(
                              "images/icon2.png",
                              width: Dimensions.height40,
          
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Dimensions.height70,),
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
                          MaterialPageRoute(builder: (context) => ShippingAddress(),)
                      );
                    },
                    child: ContainerButtonModer(
                        itext: "Confirm Payment",
                        bgColor: AppColors.mainColor
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

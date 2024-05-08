import 'package:ecommerce_shopping/screens/cart_screen.dart';
import 'package:ecommerce_shopping/utils/color.dart';
import 'package:ecommerce_shopping/utils/dimention.dart';
import 'package:ecommerce_shopping/widget/container_button_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailPopup extends StatelessWidget {
  final isStyle = TextStyle(
    fontSize: Dimensions.font18,
    fontWeight: FontWeight.w500,
    color: Colors.black
  );

  List<Color> clrs = [
    Colors.red,
    Colors.green,
    Colors.indigo,
    Colors.amber
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            context: context, 
            builder: (context) => Container(
              height: Dimensions.screenHeight/2.2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius30),
                  topRight: Radius.circular(Dimensions.radius30)
                )
              ),
              child: Padding(
                padding: EdgeInsets.all(Dimensions.height30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Size:", style: isStyle,),
                            SizedBox(height: Dimensions.height20,),
                            Text("Color:", style: isStyle,),
                            SizedBox(height: Dimensions.height20,),
                            Text("Total", style: isStyle,),
                            SizedBox(height: Dimensions.height20,),
                          ],
                        ),
                        SizedBox(width: Dimensions.width20,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: Dimensions.width10,),
                                Text("S", style: isStyle,),
                                SizedBox(width: Dimensions.width10,),
                                Text("M", style: isStyle,),
                                SizedBox(width: Dimensions.width10,),
                                Text("L", style: isStyle,),
                                SizedBox(width: Dimensions.width10,),
                                Text("XL", style: isStyle,),
                              ],
                            ),
                            SizedBox(height: Dimensions.height20,),
                            Row(
                              children: [
                                for(var i = 0; i < 4; i++)
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    height: Dimensions.height30,
                                    width: Dimensions.height30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                                      color: clrs[i]
                                    ),
                                  )
                              ],
                            ),
                            SizedBox(height: Dimensions.height20,),
                            Row(
                              children: [
                                SizedBox(width: Dimensions.width10,),
                                Text("-", style: isStyle,),
                                SizedBox(width: Dimensions.width10,),
                                Text("1", style: isStyle,),
                                SizedBox(width: Dimensions.width10,),
                                Text("+", style: isStyle,),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: Dimensions.height20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Payment", style: isStyle,),
                        Text("\$40.00",style: TextStyle(
                          color: AppColors.mainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: Dimensions.font18
                        ),)
                      ],
                    ),
                    SizedBox(height: Dimensions.height30,),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => CartScreen(),)
                        );
                      },
                      child: ContainerButtonModer(
                          itext: "Check out",
                          bgColor: Colors.black,
                        containerWidth: Dimensions.screenWidth,
                      ),
                    )
                  ],
                ),
              ),
            ),);
      },
      child: ContainerButtonModer(
          itext: "Buy Now",
          bgColor: AppColors.mainColor,
        containerWidth: Dimensions.screenWidth/1.5,
      ),
    );
  }
}

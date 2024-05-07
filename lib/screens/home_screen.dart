import 'package:ecommerce_shopping/screens/product_screen.dart';
import 'package:ecommerce_shopping/utils/color.dart';
import 'package:ecommerce_shopping/utils/dimention.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {

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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.height15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(Dimensions.height10/2),
                      height: Dimensions.height50,
                      width: MediaQuery.of(context).size.width/1.5,
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(Dimensions.radius20/2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.05),
                            blurRadius: 2,
                            spreadRadius: 1,
                          )
                        ]
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: AppColors.mainColor,),
                          border: InputBorder.none,
                          label: Text("Find your product",)
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(Dimensions.height10/2),
                      height: Dimensions.height50,
                      width: MediaQuery.of(context).size.width/6,
                      decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(Dimensions.radius20/2),
                      ),
                      child: Icon(Icons.notifications, color: AppColors.mainColor,)
                    )
                  ],
                ),
                SizedBox(height: Dimensions.height20,),
                Container(
                  width: Dimensions.screenHeight,
                  height: Dimensions.height150,
                  decoration: BoxDecoration(
                    color: AppColors.banner
                  ),
                  child: Image.asset("images/freed.png")
                ),
                SizedBox(height: Dimensions.height20,),
                SizedBox(
                  height: Dimensions.height40,
                  child: ListView.builder(
                      shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: tabs.length,
                    itemBuilder: (context, index) {
                      return FittedBox(
                        child: Container(
                          height: Dimensions.height50,
                          margin: EdgeInsets.all(Dimensions.height10),
                          padding: EdgeInsets.fromLTRB(Dimensions.width20, Dimensions.height10, Dimensions.width20, Dimensions.height10),
                          decoration: BoxDecoration(
                            color: Colors.black12.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(Dimensions.radius20)
                          ),
                          child: Center(
                            child: FittedBox(
                              child: Text(
                                tabs[index],
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.font26
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: Dimensions.height20,),
                Container(
                  height: Dimensions.height260,
                  child: ListView.builder(
                    itemCount: images.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: Dimensions.width10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: Dimensions.height200,
                              child: Stack(
                                children: [
                                  InkWell(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                                      child: Image.asset(
                                        images[index],
                                        width: Dimensions.height150,
                                        height: Dimensions.height180,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context, 
                                          MaterialPageRoute(builder: (context) => ProductScreen(),)
                                      );
                                    },
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    child: Container(
                                      width: Dimensions.height30,
                                      height: Dimensions.height30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(Dimensions.height30/0.5)
                                      ),
                                      child: Center(
                                        child: Icon(Icons.favorite, color: AppColors.mainColor,size: Dimensions.font20,),
                                      ),
                                    )
                                  ),
            
                                ],
                              ),
                            ),
                            Text(productTitles[index], style: TextStyle(
                                color: Colors.black87,
                                fontSize: Dimensions.font18,
                              fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: Dimensions.height10/2,),
                            Row(
                              children: [
                                Icon(Icons.star, size: Dimensions.font18,color: Colors.yellow),
                                Text("("+review[index]+")",style: TextStyle(
                                  fontSize: Dimensions.font12,
                                ),),
                                SizedBox(width: Dimensions.width10,),
                                Text(prices[index], style: TextStyle(
                                  fontSize: Dimensions.font16,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.mainColor
                                ),)
                              ]
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: Dimensions.height20,),
                Align(
                  alignment: Alignment.topLeft,
                    child: Text("New Product", style: TextStyle(
                      fontSize: Dimensions.font26,
                      fontWeight: FontWeight.bold
                    ),)
                ),
                SizedBox(height: Dimensions.height20,),
                GridView.builder(
                  itemCount: productTitles.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.6,
                      crossAxisSpacing: 2
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: Dimensions.width10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: Dimensions.height200,
                              child: Stack(
                                children: [
                                  InkWell(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                                      child: Image.asset(
                                        images[index],
                                        width: Dimensions.height150,
                                        height: Dimensions.height180,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      top: 10,
                                      right: 10,
                                      child: Container(
                                        width: Dimensions.height30,
                                        height: Dimensions.height30,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(Dimensions.height30/0.5)
                                        ),
                                        child: Center(
                                          child: Icon(Icons.favorite, color: AppColors.mainColor,size: Dimensions.font20,),
                                        ),
                                      )
                                  ),

                                ],
                              ),
                            ),
                            Text(productTitles[index], style: TextStyle(
                                color: Colors.black87,
                                fontSize: Dimensions.font18,
                                fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: Dimensions.height10/2,),
                            Row(
                                children: [
                                  Icon(Icons.star, size: Dimensions.font18,color: Colors.yellow),
                                  Text("("+review[index]+")",style: TextStyle(
                                    fontSize: Dimensions.font12,
                                  ),),
                                  SizedBox(width: Dimensions.width10,),
                                  Text(prices[index], style: TextStyle(
                                      fontSize: Dimensions.font16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.mainColor
                                  ),)
                                ]
                            )
                          ],
                        ),
                      );;
                    },)
              ],
            ),
          ),
        ),
      )
    );
  }
}

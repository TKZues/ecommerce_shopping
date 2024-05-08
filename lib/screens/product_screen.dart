import 'package:ecommerce_shopping/utils/color.dart';
import 'package:ecommerce_shopping/utils/dimention.dart';
import 'package:ecommerce_shopping/widget/product_detail_popup.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductScreen extends StatelessWidget {
  List<String> images = [
    "images/image1.jpg",
    "images/image2.jpg",
    "images/image3.jpg",
    "images/image4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Overview"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(),
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(Dimensions.height20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: Dimensions.height450,
                  width: Dimensions.screenWidth,
                  child: FanCarouselImageSlider(
                    sliderHeight: Dimensions.height450-Dimensions.height20,
                      imagesLink: images,
                      isAssets: true,
                      autoPlay: true,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Warm Zipper", style: TextStyle(
                            color: Colors.black,
                            fontSize: Dimensions.font20,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: Dimensions.height10/2,),
                        Text("Hooded Jacket", style: TextStyle(
                          fontSize: Dimensions.font12
                        ),)
                      ],
                    ),
                    Text("\$300.00",style: TextStyle(
                      fontSize: Dimensions.font26,
                      fontWeight: FontWeight.w700,
                      color: AppColors.mainColor
                    ),)
                  ],
                ),
                SizedBox(height: Dimensions.height10,),
                Align(
                  alignment: Alignment.topLeft,
                  child: RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: Dimensions.font26,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                SizedBox(height: Dimensions.height10,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Body and mind – rejuvenate them in the outdoors wearing our tough ULT-Hike Hooded Jacket",style: TextStyle(
                    fontSize: Dimensions.font14,
                    color: Colors.black54,
                    fontWeight: FontWeight.w400
                  ),),
                ),
                SizedBox(height: Dimensions.height30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: Dimensions.height60,
                      width: Dimensions.height60,
                      decoration: BoxDecoration(
                        color: AppColors.buttonColor,
                        borderRadius: BorderRadius.circular(Dimensions.radius30)
                      ),
                      child: Center(
                        child: Icon(Icons.shopping_cart, color: AppColors.mainColor,),
                      ),
                    ),
                    ProductDetailPopup()
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:ecommerce_shopping/screens/navigation_screen.dart';
import 'package:ecommerce_shopping/utils/color.dart';
import 'package:ecommerce_shopping/utils/dimention.dart';
import 'package:ecommerce_shopping/widget/container_button_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(Dimensions.height20),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(Dimensions.height40),
                child: Image.asset("images/success.png"),
              ),
              Text(
                "Success!",
                style: TextStyle(
                  fontSize: Dimensions.font35,
                  fontWeight:FontWeight.bold,
                  color: Colors.black
                ),
              ),
              SizedBox(height: Dimensions.height20,),
              Text(
                "Your order will be delivered soon.\nThank you! For choosing our app"
              ),
              SizedBox(height: Dimensions.height40,),
              InkWell(
                child: ContainerButtonModer(
                    itext: "Continue Shopping",
                    bgColor: AppColors.mainColor,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NavigationScreen(),)
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:ecommerce_shopping/screens/onboarding_screen.dart';
import 'package:ecommerce_shopping/utils/dimention.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    Timer(Duration(seconds: 3),
      () => Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => OnboardingScreen(),)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage("images/image2.jpg"),
            fit: BoxFit.cover,
            opacity: 0.4
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart,
              size: Dimensions.height200,
              color: Color(0xfffa4545),
            ),
            Text("DP SHOP",style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,

            ),)
          ],
        )
      ),
    );
  }
}

import 'package:ecommerce_shopping/screens/login_screen.dart';
import 'package:ecommerce_shopping/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void  main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Ecommerce Shopping App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFEF6969),
      ),
      home: LoginScreen(),
      //flutter emulators --launch Pixel 4 API 30
    );
  }
}

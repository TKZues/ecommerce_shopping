import 'package:ecommerce_shopping/screens/otp_verify_screen.dart';
import 'package:ecommerce_shopping/utils/dimention.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.height15),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text("Forgot Password",
                  style: TextStyle(
                    fontSize: Dimensions.font26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: Dimensions.with10,),
              Text("Please enter your email address. You will receive a link to create ỏ set a new password via email"),
              SizedBox(height: Dimensions.height20,),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Email"
                ),
              ),
              SizedBox(height: Dimensions.height30,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OTPVerifyScreen(),)
                  );
                },
                child: Text("Send Code", style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(55),
                    backgroundColor: Color(0xffdb3022),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

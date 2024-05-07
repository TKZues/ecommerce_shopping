import 'package:ecommerce_shopping/screens/recovery_screen.dart';
import 'package:ecommerce_shopping/utils/color.dart';
import 'package:ecommerce_shopping/utils/dimention.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'otp_screen.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  bool clrButton = false;
  TextEditingController emailController =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(height: Dimensions.width10,),
              Text("Please enter your email address. You will receive a link to create ỏ set a new password via email"),
              SizedBox(height: Dimensions.width30,),
              TextFormField(
                controller: emailController,
                onChanged: (value) {
                  if(value != ""){
                    setState(() {
                      clrButton = true;
                    });
                  }
                },
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  suffix: InkWell(
                      child: Icon(
                        CupertinoIcons.multiply,
                        color: AppColors.mainColor,
                      ),
                    onTap: () {
                      setState(() {
                        emailController.clear();
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: Dimensions.height50,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RecoveryScreen(),)
                  );
                },
                child: Text("Send Code", style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(55),
                    backgroundColor: Color(0xffdb3022),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: Dimensions.height20,),
                  Text("OR"),
                  TextButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OTPScreen(),)
                    );
                  }, child: Text("Verify Using Number", style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffdb3022)
                  ),
                  )
                  )

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

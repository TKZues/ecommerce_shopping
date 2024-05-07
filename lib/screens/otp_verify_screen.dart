import 'package:ecommerce_shopping/screens/recovery_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

import '../utils/dimention.dart';

class OTPVerifyScreen extends StatefulWidget {
  const OTPVerifyScreen({Key? key}) : super(key: key);

  @override
  State<OTPVerifyScreen> createState() => _OTPVerifyScreenState();
}

class _OTPVerifyScreenState extends State<OTPVerifyScreen> {
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  TextEditingController textEditingController = new TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text("Enter OTP",
                  style: TextStyle(
                    fontSize: Dimensions.font26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: Dimensions.height20,),
              Text("Enter the OTP we have sent you to your Number"),
              SizedBox(height: Dimensions.width30,),
              TextFieldPin(
                  textController: textEditingController,
                  autoFocus: false,
                  codeLength: 4,
                  alignment: MainAxisAlignment.center,
                  defaultBoxSize: 55.0,
                  margin: 10,
                  selectedBoxSize: 55.0,
                  textStyle: TextStyle(fontSize: 16),
                  defaultDecoration: _pinPutDecoration.copyWith(
                      border: Border.all(
                          color: Colors.grey
                      )
                  ),
                  selectedDecoration: _pinPutDecoration,
                  onChange: (code) {
                    setState(() {

                    });
                  }
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RecoveryScreen(),)
                  );
                },
                child: Text("Verify", style: TextStyle(color: Colors.white),),
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

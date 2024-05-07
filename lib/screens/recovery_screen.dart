import 'package:ecommerce_shopping/utils/color.dart';
import 'package:ecommerce_shopping/utils/dimention.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecoveryScreen extends StatefulWidget {
  const RecoveryScreen({Key? key}) : super(key: key);

  @override
  State<RecoveryScreen> createState() => _RecoveryScreenState();
}

class _RecoveryScreenState extends State<RecoveryScreen> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Forgot Password",
                style: TextStyle(
                  fontSize: Dimensions.font26,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: Dimensions.width30,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Reset Code",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.numbers)
                ),
              ),
              SizedBox(height: Dimensions.height20,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "New Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              SizedBox(height: Dimensions.height20,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Confirm password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              SizedBox(height: Dimensions.height50,),
              ElevatedButton(
                onPressed: (){
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => HomeScreen(),)
                  // );
                },
                child: Text("Reset Password", style: TextStyle(color: Colors.white),),
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

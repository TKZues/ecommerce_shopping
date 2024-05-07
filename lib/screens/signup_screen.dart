import 'package:ecommerce_shopping/screens/login_screen.dart';
import 'package:ecommerce_shopping/screens/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage("images/freed.png")),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Enter Name",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person)
                        ),
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Enter Email",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Enter Number",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.numbers),
                        ),
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Enter Password",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.remove_red_eye),
                        ),
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Corfirm Password",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.remove_red_eye),
                        ),
                      ),
                      SizedBox(height: 30,),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomeScreen(),)
                          );

                        },
                        child: Text("Create Account", style: TextStyle(color: Colors.white),),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size.fromHeight(55),
                            backgroundColor: Color(0xffdb3022),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?", style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),),
                          TextButton(onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LoginScreen(),)
                            );
                          }, child: Text("Login", style: TextStyle(
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
                )
              ],
            )
        ),
      ),
    );
  }
}

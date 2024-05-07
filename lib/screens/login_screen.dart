import 'package:ecommerce_shopping/screens/signup_screen.dart';
import 'package:ecommerce_shopping/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'forgot_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                            labelText: "Enter Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                            ),
                            prefixIcon: Icon(Icons.person)
                          ),
                        ),
                        SizedBox(height: 20,),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Enter Password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)
                              ),
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.remove_red_eye),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                              onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ForgotScreen(),)
                                );
                              },
                              child: Text("Forgot Password",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.mainColor
                              ),
                            )
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
                          child: Text("Login", style: TextStyle(color: Colors.white),),
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
                            Text("Don't Have an Account?", style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),),
                            TextButton(onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SignupScreen(),)
                              );
                            }, child: Text("Sign up", style: TextStyle(
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

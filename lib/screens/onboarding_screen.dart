import 'package:ecommerce_shopping/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  final introkey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 29,
        fontWeight: FontWeight.w700
      ),
      bodyTextStyle: TextStyle(
        fontSize: 19,
      ),
      pageColor: Colors.white,
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introkey,
      pages: [
        PageViewModel(
          title: "Big Discount",
          body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
              "Proin vitae elementum urna, at posuere arcu. Donec posuere lorem "
              "non metus imperdiet, et sodales ligula venenatis. Vivamus vitae "
              "varius odio. Nunc scelerisque nibh at quam sodales posuere. ",
          decoration: pageDecoration,
          image: Image.asset("images/splash1.png")
        ),
        PageViewModel(
            title: "Big Discount",
            body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                "Proin vitae elementum urna, at posuere arcu. Donec posuere lorem "
                "non metus imperdiet, et sodales ligula venenatis. Vivamus vitae "
                "varius odio. Nunc scelerisque nibh at quam sodales posuere. ",
            decoration: pageDecoration,
            image: Image.asset("images/splash2.png")
        ),
        PageViewModel(
            title: "Free Delivery",
            body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                "Proin vitae elementum urna, at posuere arcu. Donec posuere lorem ",
            decoration: pageDecoration,
            image: Image.asset("images/splash3.png"),
          footer:
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => HomeScreen(),)
                );

              },
              child: Text("Let's Shop", style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(55),
                backgroundColor: Color(0xffdb3022),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
              ),
            ),
          )
        ),
      ],
      showDoneButton: false,
      showSkipButton: false,
      showBackButton: true,
      back: Text(
        "Back",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Color(0xffdb3022)
        ),
      ),
      next: Text(
        "Next",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xffdb3022)
        ),
      ),

      dotsDecorator: DotsDecorator(
        size: Size.square(10),
        activeSize: Size(20,10),
        activeColor: Color(0xffdb3022),
        color: Colors.black26,
        spacing: EdgeInsets.symmetric(horizontal: 3),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
        )
      ),
    );
  }
}

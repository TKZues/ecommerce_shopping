import 'package:ecommerce_shopping/screens/order_confirm_screen.dart';
import 'package:ecommerce_shopping/utils/color.dart';
import 'package:ecommerce_shopping/utils/dimention.dart';
import 'package:ecommerce_shopping/widget/container_button_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Shipping Address"),
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: BackButton(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(Dimensions.height20),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Full Name"
                  ),
                ),
                SizedBox(height: Dimensions.height20,),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Mobile Number"
                  ),
                ),
                SizedBox(height: Dimensions.height20,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Address",
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: Dimensions.height20,),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "City",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: Dimensions.height20,),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "State/Province/Region",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: Dimensions.height20,),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Zip Code (Postal Code)",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: Dimensions.height20,),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Country",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: Dimensions.height10,),
                InkWell(
                  child: ContainerButtonModer(
                      itext: "Add Address",
                      bgColor: AppColors.mainColor
                  ),
                  onTap: () {
                    Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => OrderConfirmScreen(),)
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:ecommerce_shopping/utils/dimention.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerButtonModer extends StatelessWidget {
  final double? containerWidth;
  final String itext;
  final Color? bgColor;
  const ContainerButtonModer({Key? key, this.containerWidth, required this.itext, required this.bgColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height60,
      width: containerWidth,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(Dimensions.radius20)
      ),
      child: Center(
        child: Text(
          itext,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: Dimensions.font18
          ),
        ),
      ),
    );
  }
}

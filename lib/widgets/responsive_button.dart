import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuto_app/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;

  double? width;

  ResponsiveButton({Key? key, this.width, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.mainColor,
              blurRadius:60.0, // soften the shadow
              spreadRadius: 1.0, //extend the shadow
              offset: Offset(
                7.0, // Move to right 10  horizontally
                15.0, // Move to bottom 10 Vertically
              ),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("img/button-one.png"),
          ],
        ));
  }
}

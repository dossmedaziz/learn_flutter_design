import 'package:flutter/material.dart';
import 'package:tuto_app/misc/colors.dart';
import 'package:tuto_app/widgets/app_large_text.dart';
import 'package:tuto_app/widgets/app_text.dart';
import 'package:tuto_app/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];
  List text = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/" + images[index]),
                      fit: BoxFit.fill
                  )
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Trips"),
                        AppText(
                          text: "Mountain",
                          size: 30,
                        ),
                       const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          child:  AppText(
                            text:
                                "Mountain hikes give you an incredible sense eof freedom along with endurance test",
                            color: AppColors.textColor2,
                            size: 14,
                          ),
                        ),
                       const SizedBox(
                          height: 20,
                        ),
                        ResponsiveButton(
                          width: 120,
                        )
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots){
                        return Container(
                          margin: const EdgeInsets.only(bottom: 8),
                          width: 8,
                          height: index == indexDots ? 25 :8,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.mainColor,
                                  blurRadius:60.0, // soften the shadow
                                  spreadRadius: 1.0, //extend the shadow
                                  offset: const Offset(
                                    7.0, // Move to right 10  horizontally
                                    15.0, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexDots ? AppColors.mainColor : AppColors.mainColor.withOpacity(0.3)
                          ),
                        ) ;
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

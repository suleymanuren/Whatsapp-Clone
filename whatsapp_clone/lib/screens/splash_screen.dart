import 'package:flutter/material.dart';


import '../ui_helper/colors.dart';
import '../ui_helper/responsive.dart';
import 'home_screen.dart';


class SplashPage extends StatefulWidget {
    static String routeName = "/SplashPage";

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool? isLogging;

  @override
  initState() {
    // TODO: implement initState
    super.initState();
    saveSharedLoggingControl();
  }

  Future saveSharedLoggingControl() async {
    Future.delayed(Duration(seconds: 3), () {
     //Navigator.pushReplacementNamed(context, HomeScreen.routeName);
     Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: whiteColor.withOpacity(.97),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight*0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    height: SizeConfig.screenHeight*.14,
                    width: SizeConfig.screenWidth-100,

                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("lib/assets/WhatsApp-Logo.png"),fit: BoxFit.contain),
                    ),
                  ),



                ],
              ),
            ),
            Container(
              
              width: SizeConfig.screenWidth,
              child: Column(children: [
                Text(
                "from",
                style: TextStyle(
                  color: greyColor,
                  fontFamily: "primaryFont",
                  fontSize: SizeConfig.screenWidth * .04,
                ),
              ),
              Text(
                "FACEBOOK",
                style: TextStyle(
                  color: greenColor,
                  fontFamily: "primaryFont",
                  fontSize: SizeConfig.screenWidth * .04,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3
                ),
              ),
              ],)
            ),
          
          ],
        ),
      ),
    );
  }
}
import 'dart:async';
import 'package:flutter/material.dart';
import '../utils/theme.dart';
import 'onboarding_screen.dart';


class splashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MyScreen();
  }
}

class _MyScreen extends State<splashScreen> {

  bool visibleSplash = false;
  @override
  void initState() {
    super.initState();
     Future.delayed(
        Duration(milliseconds: 800),
            (){
          setState(() {
            visibleSplash = true;
          });

          Future.delayed(
              Duration(seconds: 3),
                  (){
                  CheckOfToken();
              }
          );
        }
    );
      
  }

  CheckOfToken() async {

   
    const duration = Duration(milliseconds: 3000);
    new Timer(duration, () {
      
        Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (context) => OnboardingScreen()),(Route<dynamic> route) => false
        );
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new Container(
        color: HexColor("#00BDFF"),
        //Theme.of(context).splashColor,
        width: MediaQuery.of(context).size.width,
         child :Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedOpacity(
                  opacity: visibleSplash ? 1 : 0,
                  duration: Duration(milliseconds: 500),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: Image.asset(
                     // "Assets/Icons/iconyallashoot.png",
                      "Assets/icons/splash.jpg",
                      fit: BoxFit.contain,
                    ),
                  ),
              ),
            ],
          ),
       ),
      ) 
    );
  }
}

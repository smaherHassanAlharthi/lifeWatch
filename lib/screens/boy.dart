import 'package:flutter/material.dart';
import 'package:lifewatch/utils/theme.dart';

class Profileboy extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   
    return new _Profileboy();

  }
}

class _Profileboy extends State<Profileboy> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
            backgroundColor: HexColor("#00BDFF"),
            iconTheme: new IconThemeData(color: Colors.white),
            title: Text("العلامات الحيوية", style: TextStyle(color: Colors.white)),
            centerTitle: true,
          ),

body:SafeArea(child: Stack(
   children: <Widget>[

            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'Assets/Images/boy.png',
              width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
            ),]
),

)
          
    );
  }
}
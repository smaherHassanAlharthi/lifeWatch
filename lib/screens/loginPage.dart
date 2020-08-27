import 'package:flutter/material.dart';
import 'package:lifewatch/screens/boy.dart';
import 'package:lifewatch/screens/info_screen.dart';
import 'package:lifewatch/screens/signPage.dart';
import '../utils/theme.dart';
import 'info_user.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
  var _formkey = GlobalKey<FormState>();

  TextEditingController NationalId = TextEditingController();
  TextEditingController Mobile = TextEditingController();


  //var rng = new Random(); // For Captcha
  //int randomCode; // store Captcha code here

//  TextEditingController captchaCode = TextEditingController(); // to check if user write the same code or not

  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          // Press back from device
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: HexColor("#00BDFF"),
            iconTheme: new IconThemeData(color: Colors.white),
            title: Text("تسجيل الدخول", style: TextStyle(color: Colors.white)),
            centerTitle: true,
          ),
          body: Container(
            padding: EdgeInsets.all(10),
            child: Form(
              key: _formkey,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ListView(
                  children: <Widget>[
                    Column(
                      children: <Widget>[

                          SizedBox(
                      height: 60,
                    ),
                        Image(
                          image: AssetImage(
                            "Assets/Images/doctor.png",
                          ),
                          height: MediaQuery.of(context).size.height * 0.20,
                        ),

                        // National ID Text Field
                        Padding(
                          padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.blueAccent,
                            ), // color of text when user write
                            maxLength:
                                10, // max length of text, after 10 the user can not write more.
                            keyboardType:
                                TextInputType.number, // type of keyboard
                            controller:
                                NationalId, //when user write, the value from user will saved here.
                            // validator: (String value) {
                            // for validation
                            //   if (value.isEmpty) {

                            //     return 'يجب ادخال رقم الهوية';
                            //   }
                            //   else if (value.length < 10) {
                            //     return 'رقم الهوية غير صحيح ، حاول مره اخرى';
                            //   }
                            //   else{

                            //   }
                            // },
                            decoration: InputDecoration(
                                labelStyle: TextStyle(
                                    color: Colors
                                        .black), // color of title for text field
                                hintStyle: TextStyle(
                                    color: Colors
                                        .grey), // color of hint for text field
                                counterText: "", // to hide counter for length
                                labelText: 'رقم الهوية', // title of text field
                                hintText:
                                    'الرجاء ادخال رقم الهوية', // hint of text field
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blue.withOpacity(0.40),
                                      width:
                                          1.0), // color of border of text field
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        5.0) // radius of border
                                    )),
                          ),
                        ),

                        //Password
                        // National ID Text Field
                        Padding(
                          padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.blueAccent,
                            ), // color of text when user write
                            maxLength:
                                10, // max length of text, after 10 the user can not write more.
                            keyboardType:
                                TextInputType.name, // type of keyboard
                            controller:
                                Mobile, //when user write, the value from user will saved here.
                            // validator: (String value) {
                            // for validation
                            //   if (value.isEmpty) {

                            //     return 'يجب ادخال رقم الهوية';
                            //   }
                            //   else if (value.length < 10) {
                            //     return 'رقم الهوية غير صحيح ، حاول مره اخرى';
                            //   }
                            //   else{

                            //   }
                            // },
                            decoration: InputDecoration(
                                labelStyle: TextStyle(
                                    color: Colors
                                        .black), // color of title for text field
                                hintStyle: TextStyle(
                                    color: Colors
                                        .grey), // color of hint for text field
                                counterText: "", // to hide counter for length
                                labelText: 'الرقم السري', // title of text field
                                hintText:
                                    'الرجاء ادخال الرقم السري ', // hint of text field
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blue.withOpacity(0.40),
                                      width:
                                          1.0), // color of border of text field
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        5.0) // radius of border
                                    )),
                          ),
                        ),

          FlatButton(
                    child: Text(
                      "نسيت كلمة المرور !؟ ",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: (){
                      
                    },
                  ),
                 
                  SizedBox(
                    height: 5,
                  ),
                        // Raised Button
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 5, top: 15),
                                child: Container(
                                    height: 50,
                                    child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0)),
                                        textColor: Colors.white,
                                        color: HexColor("#00BDFF"),
                                        child: Text(
                                          'تسجيل الدخول',
                                          textScaleFactor: 1,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () {
                                           Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Profileboy() ,
                                            ),
                                          );
                                        })),
                              ),
                            )
                          ],
                        ),

                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 5, top: 15),
                                child: Container(
                                    height: 50,
                                    child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0)),
                                        textColor: Colors.white,
                                        color: HexColor("#00BDFF"),
                                        child: Text(
                                          'تسجيل مستخدم جديد',
                                          textScaleFactor: 1,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => SignPage(),
                                            ),
                                          );
                                        })),
                              ),
                            )
                          ],
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    )
                  ],
                ),
              ),
            ),
            // color: Colors.blueGrey,
          ),
        ));
  }
}

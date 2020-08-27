import 'package:flutter/material.dart';
import 'package:lifewatch/screens/boy.dart';
import 'package:lifewatch/screens/signPage.dart';
import '../utils/theme.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

import 'profile_page.dart';

class InfoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _InfoPage();
  }
}

class _InfoPage extends State<InfoPage> {
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
            title:
                Text("معلومات المستخدم", style: TextStyle(color: Colors.white)),
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
                          height: 30,
                        ),
                        Image(
                          image: AssetImage(
                            "Assets/Images/medical_research.png",
                          ),
                          height: MediaQuery.of(context).size.height * 0.20,
                        ),
                        Text("حدد ما اذا كان يوجد لديك أحد الأمراض التالية "),
                        CheckboxListTile(
                          title: const Text('سليم '),
                          value: timeDilation != 1.0,
                          onChanged: (bool value) {
                            setState(() {
                              timeDilation = value ? 10.0 : 1.0;
                            });
                          },
                          secondary: const Icon(Icons.person_pin),
                        ),
                          CheckboxListTile(
                          title: const Text('سكر  '),
                          value: timeDilation != 1.0,
                          onChanged: (bool value4) {
                            setState(() {
                              timeDilation = value4 ? 10.0 : 1.0;
                            });
                          },
                          secondary: const Icon(Icons.person_pin),
                        ),

                           CheckboxListTile(
                          title: const Text('ضغط  '),
                          value: timeDilation != 1.0,
                          onChanged: (bool value3) {
                            setState(() {
                              timeDilation = value3 ? 10.0 : 1.0;
                            });
                          },
                          secondary: const Icon(Icons.person_pin),
                        ),
                          CheckboxListTile(
                          title: const Text('ربو  '),
                          value: timeDilation != 1.0,
                          onChanged: (bool value2) {
                            setState(() {
                              timeDilation = value2 ? 10.0 : 1.0;
                            });
                          },
                          secondary: const Icon(Icons.person_pin),
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
                                TextInputType.number, // type of keyboard
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
                                labelText: 'الوزن', // title of text field
                                hintText:
                                    'الرجاء ادخال وزنك الحالي  ', // hint of text field
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black.withOpacity(0.40),
                                      width:
                                          1.0), // color of border of text field
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        5.0) // radius of border
                                    )),
                          ),
                        ),
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
                                labelText: 'الطول', // title of text field
                                hintText:
                                    'الرجاء ادخال طولك   ', // hint of text field
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black.withOpacity(0.40),
                                      width:
                                          1.0), // color of border of text field
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        5.0) // radius of border
                                    )),
                          ),
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
                                          'تأكيد المعلومات',
                                  //        textScaleFactor: 1,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () {
                                           Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => ProfilePage() ,
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
                                        color: Colors.white,
                                        child: Text(
                                          'تأكيد المعلومات',
                                    //      textScaleFactor: 1,
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

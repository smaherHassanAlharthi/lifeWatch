import 'package:flutter/material.dart';
import '../utils/theme.dart';
import 'info_user.dart';
import 'loginPage.dart';

class SignPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return new _SignPage();
  }
}

class _SignPage extends State<SignPage> {
  var _formkey = GlobalKey<FormState>();

  TextEditingController NationalId = TextEditingController();
  TextEditingController Mobile = TextEditingController();
    TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();
  TextEditingController c = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
        onWillPop: () {
          // Press back from device
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: HexColor("#00BDFF"),
            iconTheme: new IconThemeData(color: Colors.white),
            title: Text("تسجيل مستخدم جديد ",
                style: TextStyle(color: Colors.white)),
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
                        Image(
                          image: AssetImage(
                            "Assets/Images/medicine.png",
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
                                TextInputType.name, // type of keyboard
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
                                c, //when user write, the value from user will saved here.
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
                                labelText: 'الاسم', // title of text field
                                hintText:
                                    'الرجاء ادخال رقم الهوية', // hint of text field
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
                                labelText: 'رقم الجوال', // title of text field
                                hintText:
                                    'الرجاء ادخال رقم الهوية', // hint of text field
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
                                a, //when user write, the value from user will saved here.
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
                                    'الرجاء ادخال رقم الهوية', // hint of text field
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
                                b, //when user write, the value from user will saved here.
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
                                labelText:
                                    ' تأكيد الرقم السري', // title of text field
                                hintText:
                                    'الرجاء ادخال الرقم السري ', // hint of text field
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


///
///
///
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
                                              builder: (context) => InfoPage(),
                                            ),
                                          );
                                        })),
                              ),
                            )
                          ],
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
                                              builder: (context) => LoginPage(),
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

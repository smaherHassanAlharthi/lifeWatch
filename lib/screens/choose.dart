import 'package:flutter/material.dart';
import 'package:lifewatch/screens/loginPage.dart';
import 'package:lifewatch/utils/theme.dart';
import 'package:lifewatch/widget/category_card.dart';

class Choose extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _Choose();

  }
}

class _Choose extends State<Choose> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(

  
     // bottomNavigationBar: BottomNavBar(),
      body: Stack(
       
        children: <Widget>[
          // Container(
          //   // Here the height of the container is 45% of our total height
          //   height: size.height * .45,
          //   decoration: BoxDecoration(
          //     color: Color(0xFFF5CEB8),
          //     image: DecorationImage(
          //       alignment: Alignment.centerLeft,
          //       image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
          //     ),
          //   ),
          // ),
          SafeArea(
            
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Align(
                  //   alignment: Alignment.topRight,
                  //   child: Container(
                  //     alignment: Alignment.center,
                  //     height: 52,
                  //     width: 52,
                  //     // decoration: BoxDecoration(
                  //     //   color: Color(0xFFF2BEA1),
                  //     //   shape: BoxShape.circle,
                  //     // ),
                  //    // child: SvgPicture.asset("assets/icons/menu.svg"),
                  //   ),
                  // ),

                     SizedBox(
                      height:   280,
                    ),

                  // Text(
                  //   "اختر  \ ",
                  //   style: Theme.of(context)
                  //       .textTheme
                  //       .display1
                  //       .copyWith(fontWeight: FontWeight.w900),
                  // ),
                  // SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "مواطن أو مقيم",
                          svgSrc: "Assets/icons/social.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return LoginPage();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "ممارس صحي",
                          svgSrc: "Assets/icons/doctor.svg",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
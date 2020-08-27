import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lifewatch/widget/my_header.dart';
import 'constant.dart';

class InfoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _InfoScreen();

  }
}

class _InfoScreen extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
      body: SingleChildScrollView(
       // controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MyHeader(
             // image: "Assets/icons/coronadr.svg",
              textTop: "ما ذا يجب أن تعرف",
              textBottom:   "  Covid-19 عن",
           //  offset: offset,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Symptoms      الأعراض  ",
                    style: kTitleTextstyle,
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        // SymptomCard(
                        //   image: "Assets/images/headache.png",
                        //   title: "Headache\n   صداع ",
                        //   isActive: true,
                        // ),
                        // SymptomCard(
                        //   image: "Assets/images/caugh.png",
                        //   title: "Caugh \n   سعال  ",
                        // ),
                        // SymptomCard(
                        //   image: "Assets/images/fever.png",
                        //   title: "Fever \n   حرارة ",
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Prevention        الوقاية ", style: kTitleTextstyle),
                  SizedBox(height: 20),
                  PreventCard(
                    text:
                        "منذ بداية تفشي الفيروس  ، يجب الحرص على ارتداء  الكمامه طوال الوقت",
                  //  image: "Assets/images/wear_mask.png",
                    title: "احرص على لبس الكمامة",
                  ),
                  PreventCard(
                    text:
                        "احرص على تعقيم يديك وغسلها بالماء والصابون وعدم لبس الأنف والفم",
                  //  image: "Assets/images/wash_hands.png",
                    title: "اغسل يدك جيدا ",
                  ),
                  SizedBox(height: 50),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PreventCard extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  const PreventCard({
    Key key,
    this.image,
    this.title,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 156,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Container(
              height: 136,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 8),
                    blurRadius: 24,
                    color: kShadowColor,
                  ),
                ],
              ),
            ),
            Image.asset(image),
            Positioned(
              left: 130,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: 136,
                width: MediaQuery.of(context).size.width - 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      title,
                      style: kTitleTextstyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        text,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                     // child: SvgPicture.asset("Assets/icons/forward.svg"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class SymptomCard extends StatelessWidget {
//   final String image;
//   final String title;
//   final bool isActive;
//   const SymptomCard({
//     Key key,
//     this.image,
//     this.title,
//     this.isActive = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         color: Colors.white,
//         boxShadow: [
//           isActive
//               ? BoxShadow(
//                   offset: Offset(0, 10),
//                   blurRadius: 20,
//                   color: kActiveShadowColor,
//                 )
//               : BoxShadow(
//                   offset: Offset(0, 3),
//                   blurRadius: 6,
//                   color: kShadowColor,
//                 ),
//         ],
//       ),
//       child: Column(
//         children: <Widget>[
//           Image.asset(image, height: 90),
//           Text(
//             title,
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     );
//   }
// }

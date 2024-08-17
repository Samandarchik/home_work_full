import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_work_full/2_covid_19/color.dart';
import 'package:home_work_full/2_covid_19/counter.dart';
import 'package:home_work_full/2_covid_19/info_screen.dart';
import 'package:home_work_full/2_covid_19/my_header.dart';
import 'package:home_work_full/floating_action_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _dropDownItems = [
    "Indonesia",
    "Bangladesh",
    "United States",
    "Japan",
    "Uzbekistan"
  ];
  String _selectedItem = "Indonesia";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              MyHeader(
                  images: "assets/icons/Drcorona.svg",
                  textTop: "All you need",
                  textBottom: "is stay at home"),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFE5E5E5)),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/maps-and-flags.svg"),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: DropdownButton(
                        dropdownColor: Colors.white,
                        icon: SvgPicture.asset("assets/icons/dropdown.svg"),
                        isExpanded: true,
                        underline: SizedBox(),
                        value: _selectedItem,
                        items: _dropDownItems.map((String item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            _selectedItem = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "Case Update\n",
                                  style: kTitleTextstyle),
                              TextSpan(
                                  text: "Newest update March 28",
                                  style: TextStyle(color: kTextLightColor))
                            ],
                          ),
                        ),
                        Spacer(),
                        Text(
                          "See details",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 30,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Counter(
                              colorcounter: kInfectedColor,
                              infectednumber: "1046",
                              countername: "Infected"),
                          Counter(
                              colorcounter: kDeathColor,
                              infectednumber: "87",
                              countername: "Deaths"),
                          Counter(
                              colorcounter: kRecovercolor,
                              infectednumber: "46",
                              countername: "Recover")
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Spread of Virus",
                          style: kTitleTextstyle,
                        ),
                        Text(
                          "See Details",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: kPrimaryColor),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(20),
                      height: 178,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 30,
                                color: kShadowColor)
                          ]),
                      child: Image.asset(
                        "assets/images/map.png",
                        fit: BoxFit.contain,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton12(
          press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return InfoScreen();
            }));
          },
        ));
  }
}

class MyCLipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

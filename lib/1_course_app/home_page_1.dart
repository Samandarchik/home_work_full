import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_work_full/1_course_app/category.dart';
import 'package:home_work_full/1_course_app/constants_1.dart';
import 'package:home_work_full/1_course_app/detalies_screen.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 20,
          top: 50,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/icons/menu.svg"),
                Image.asset("assets/images/user.png")
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Hey Samandar",
              style: kHeadingextStyle,
            ),
            Text(
              "Find a course you want to learn",
              style: kSubheadingextStyle,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFFF5F5F7),
                  borderRadius: BorderRadius.circular(40)),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: SvgPicture.asset("assets/icons/search.svg"),
                    hintText: "Search for anything",
                    hintStyle:
                        TextStyle(color: Color(0xFFABA5BD), fontSize: 18),
                    border: InputBorder.none),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categary",
                  style: kHeadingextStyle,
                ),
                Text(
                  "See All",
                  style: kSubtitleTextSyule.copyWith(color: kBlueColor),
                ),
              ],
            ),
            Expanded(
              child: MasonryGridView.builder(
                padding: EdgeInsets.only(top: 20),
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                itemCount: categoryList.length,
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  Category category = categoryList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetaliesScreen1();
                      }));
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: index.isEven ? 200 : 240,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              category.image,
                            )),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            category.name,
                            style: kTitleTextStyle,
                          ),
                          Text(
                            "${category.numOfCourses} Course",
                            style: TextStyle(color: kTextColor.withOpacity(.5)),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DetaliesScreen1()));
        },
        child: Icon(
          CupertinoIcons.right_chevron,
        ),
      ),
    );
  }
}

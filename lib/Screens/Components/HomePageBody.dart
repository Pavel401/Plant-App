import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/Screens/DetailsPage.dart';
import 'package:plant_app/constants.dart';
import 'package:sizer/sizer.dart';

import 'HeaderWithSearchBar.dart';
import 'RecommendedCard.dart';
import 'RecommendedTitleBar.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<String> title = ["Samantha", "Angelica", "Samantha"];
    List<String> price = ["400", "440", "450"];
    List<String> country = ["Russia", 'India', "Nepal"];

    List<String> paths = [
      "assets/images/image_1.png",
      "assets/images/image_2.png",
      "assets/images/image_3.png"
    ];
    List<String> featured_paths = [
      "assets/images/bottom_img_1.png",
      "assets/images/bottom_img_2.png",
      "assets/images/bottom_img_1.png",
      "assets/images/bottom_img_2.png",
      "assets/images/bottom_img_1.png",
      "assets/images/bottom_img_2.png",
    ];

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBar(),
          SizedBox(height: 4.h),
          RecommendedRowWithMoreButton(
            title: "Recommended",
            press: () {},
          ),
          GenerateWidget(
            title,
            price,
            country,
            paths,
          ),
          RecommendedRowWithMoreButton(
            title: "Featured Plants",
            press: () {},
          ),
          //   featuredWidget(),
          Container(
            height: 30.h,
            //color: kPrimaryColor,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: featured_paths.length,
              itemBuilder: ((context, index) => featuredWidget(
                    press: () {},
                    path: featured_paths[index],
                  )),
            ),
          ),

          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }

  Container GenerateWidget(List<String> title, List<String> price,
      List<String> country, List<String> paths) {
    return Container(
      height: 30.h,
      //color: kPrimaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: title.length,
        itemBuilder: ((context, index) => CustomIRecommendedCard(
              press: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DetailsPage()));
              },
              price: price[index],
              country: country[index],
              path: paths[index],
              title: title[index],
            )),
      ),
    );
  }
}

class featuredWidget extends StatelessWidget {
  featuredWidget({
    required this.press,
    required this.path,
    Key? key,
  }) : super(key: key);
  String path = "";
  final void Function()? press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(path),
          ),
        ),
      ),
    );
  }
}

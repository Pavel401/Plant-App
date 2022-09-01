import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants.dart';

class CustomIRecommendedCard extends StatelessWidget {
  CustomIRecommendedCard({
    Key? key,
    required this.price,
    required this.path,
    required this.country,
    required this.title,
    required this.press,
  }) : super(key: key);

  String title = "";
  String price = "";
  String path = "";

  String country = "";
  void Function()? press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
        ),
        width: size.width * 0.4,
        child: Column(
          children: <Widget>[
            Image.asset(path),
            Container(
              //padding: const EdgeInsets.all(kDefaultPadding / 2),
              width: 37.5.w,
              padding: EdgeInsets.all(6),
              height: 6.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants.dart';

class CustomTitleWidget extends StatelessWidget {
  CustomTitleWidget({
    required this.title,
    Key? key,
  }) : super(key: key);

  String title = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 0.5.h,
              color: kPrimaryColor.withOpacity(0.20),
            ),
          )
        ],
      ),
    );
  }
}

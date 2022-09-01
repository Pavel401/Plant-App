import 'package:flutter/material.dart';

import '../../constants.dart';
import 'CustomTitleBarWidget.dart';

class RecommendedRowWithMoreButton extends StatelessWidget {
  RecommendedRowWithMoreButton({
    Key? key,
    required this.press,
    required this.title,
  }) : super(key: key);

  String title = "";
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTitleWidget(
            title: title,
          ),
          TextButton(
            onPressed: press,
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor:
                    MaterialStateProperty.all<Color>(kPrimaryColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(color: kPrimaryColor)))),
            child: const Text("More"),
          )
        ],
      ),
    );
  }
}

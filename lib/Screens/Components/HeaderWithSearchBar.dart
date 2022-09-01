import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../constants.dart';

class HeaderWithSearchBar extends StatelessWidget {
  const HeaderWithSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      child: Stack(children: [
        Container(
          padding: EdgeInsets.only(
            bottom: kDefaultPadding + 36,
            left: kDefaultPadding,
            right: kDefaultPadding,
          ),
          height: 20.h - 27,
          decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            ),
          ),
          child: Row(
            children: [
              Text(
                "Hi Mabud!",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Image.asset("assets/images/logo.png")
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            alignment: Alignment.center,
            height: 6.h,
            margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.20))
            ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle:
                          TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                      hintText: "Search",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/search.svg"))
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/Components/Bottomnavigationbar.dart';
import 'package:plant_app/Screens/Components/HomePageBody.dart';
import 'package:plant_app/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: const HomePageBody(),
      bottomNavigationBar: NavBar(),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(""),
      elevation: 0,
      backgroundColor: kPrimaryColor,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}

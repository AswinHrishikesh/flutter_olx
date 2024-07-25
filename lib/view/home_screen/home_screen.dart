import 'package:flutter/material.dart';
import 'package:flutter_olx/utils/constants/color_constants.dart';
import 'package:flutter_olx/view/home_screen/banner_widget.dart';
import 'package:flutter_olx/view/home_screen/category_section.dart';
import 'package:flutter_olx/view/home_screen/location_bar.dart';
import 'package:flutter_olx/view/home_screen/recommendation_section.dart';
import 'package:flutter_olx/view/home_screen/top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBar(),
          LocationBar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 325,
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorConstants.mainblack),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: ColorConstants.mainblack),
                      SizedBox(width: 15),
                      Center(
                        child: Text(
                          "Find cars, Mobile Phones and more...",
                          style: TextStyle(color: ColorConstants.mainblack),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Icon(Icons.notifications_none,
                    color: ColorConstants.mainblack, size: 26),
              ],
            ),
          ),
          SizedBox(height: 15),
          BannerWidget(),
          CategorySection(),
          Divider(
            thickness: 10,
            color: Color(0xffd9d9d9),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  "Fresh recommendations",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: ColorConstants.mainblack),
                ),
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: RecommendationSection(),
          ))
        ],
      ),
    );
  }
}

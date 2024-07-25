import 'package:flutter/material.dart';
import 'package:flutter_olx/utils/constants/color_constants.dart';
import 'package:flutter_olx/utils/constants/image_constants.dart';
import 'package:flutter_olx/view/tabs/ads_tab.dart';
import 'package:flutter_olx/view/tabs/favourites_tab.dart';

class MyAds extends StatelessWidget {
  const MyAds({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            // Green Container
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              color: ColorConstants.green,
            ),
            // Padding for OLX Logo
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                children: [
                  Image.asset(ImageConstants.olx_ad_page),
                ],
              ),
            ),
            // Padding for "My Ads" Text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 1),
              child: Row(
                children: [
                  Text(
                    "My Ads",
                    style: TextStyle(
                      color: ColorConstants.green,
                      fontSize: 21,
                    ),
                  ),
                ],
              ),
            ),
            // TabBar
            TabBar(
              unselectedLabelColor: ColorConstants.green,
              labelColor: ColorConstants.green,
              indicatorColor: ColorConstants.green,
              indicatorWeight: 3,
              tabs: [
                Tab(text: "ADS"),
                Tab(text: "FAVOURITES"),
              ],
            ),
            // Expanded TabBarView to show content
            Expanded(
              child: TabBarView(
                children: [
                  AdsTab(),
                  FavouritesTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_olx/utils/constants/color_constants.dart';
import 'package:flutter_olx/utils/constants/image_constants.dart';

class FavouritesTab extends StatelessWidget {
  const FavouritesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(ImageConstants.hearts_png),
            SizedBox(height: 4),
            Text(
              "you haven't liked anything yet",
              style: TextStyle(
                  fontSize: 18,
                  color: ColorConstants.mainblack,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 5),
            Text(
              "collect all things you like in",
              style: TextStyle(
                color: ColorConstants.mainblack,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 2),
            Text(
              "one palce",
              style: TextStyle(fontSize: 14, color: ColorConstants.mainblack),
            ),
            SizedBox(height: 2),
            Container(
              height: 40,
              width: 209,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: ColorConstants.green),
              child: Center(
                child: Text(
                  "Discover",
                  style: TextStyle(
                      color: ColorConstants.mainwhite,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

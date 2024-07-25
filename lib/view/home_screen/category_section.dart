import 'package:flutter/material.dart';
import 'package:flutter_olx/utils/constants/color_constants.dart';
import 'package:flutter_olx/utils/constants/image_constants.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Browse categories",
                style: TextStyle(
                  color: ColorConstants.mainblack,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    "See all",
                    style: TextStyle(
                        color: ColorConstants.mainblack,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: 8),
                  Image.asset(ImageConstants.small_car),
                  SizedBox(height: 3),
                  Text(
                    "OLX AUTOS (CARS)",
                    style: TextStyle(
                        fontSize: 11,
                        color: ColorConstants.mainblack,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(ImageConstants.small_house),
                  SizedBox(height: 5),
                  Text(
                    "PROPERTIES",
                    style: TextStyle(
                        fontSize: 11,
                        color: ColorConstants.mainblack,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(ImageConstants.small_mobile),
                  SizedBox(height: 5),
                  Text(
                    "MOBILES",
                    style: TextStyle(
                        fontSize: 11,
                        color: ColorConstants.mainblack,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(ImageConstants.small_suitcase),
                  SizedBox(height: 5),
                  Text(
                    "JOBS",
                    style: TextStyle(
                        fontSize: 11,
                        color: ColorConstants.mainblack,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

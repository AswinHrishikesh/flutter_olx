import 'package:flutter/material.dart';
import 'package:flutter_olx/utils/constants/color_constants.dart';
import 'package:flutter_olx/utils/constants/image_constants.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 200,
        padding: const EdgeInsets.only(left: 15, right: 10, top: 15),
        decoration: BoxDecoration(
          color: ColorConstants.home_light_blue,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(ImageConstants.white_olx_home),
                SizedBox(width: 8),
                Text(
                  "AUTOS",
                  style: TextStyle(
                      color: ColorConstants.mainwhite,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Enjoy additional benefit",
                      style: TextStyle(
                          color: ColorConstants.mainwhite,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "worth ₹ 1,50,000",
                      style: TextStyle(
                          color: ColorConstants.mainwhite,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Spacer(),
                Image.asset(ImageConstants.delivary_image)
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 165,
                  decoration: BoxDecoration(
                    color: ColorConstants.mainwhite,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "Buy Car",
                      style: TextStyle(
                          color: ColorConstants.mainblack,
                          fontSize: 16,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                SizedBox(width: 25),
                Container(
                  height: 40,
                  width: 165,
                  decoration: BoxDecoration(
                    color: ColorConstants.mainwhite,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "Sell car",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

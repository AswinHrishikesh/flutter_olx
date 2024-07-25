import 'package:flutter/material.dart';
import 'package:flutter_olx/utils/constants/color_constants.dart';
import 'package:flutter_olx/utils/constants/image_constants.dart';

class AdsTab extends StatelessWidget {
  const AdsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              ImageConstants.cycle_png, // Replace with your no ads asset
              height: 150,
            ),
            SizedBox(height: 10),
            Text(
              "you haven’t listed anything yet",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "let go of what you don’t use anymore",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Add your onTap code here!
              },
              child: Container(
                width: 209,
                height: 40,
                decoration: BoxDecoration(
                  color: ColorConstants.green,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    "post",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              color: ColorConstants.blue,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Heavy discount on ",
                        style: TextStyle(
                          color: ColorConstants.mainwhite,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "packages",
                        style: TextStyle(
                            color: ColorConstants.mainwhite,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  OutlinedButton(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    child: Text(
                      "view packages",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_olx/utils/constants/color_constants.dart';
import 'package:flutter_olx/utils/constants/image_constants.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainwhite,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            color: ColorConstants.green,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    ImageConstants.olx_ad_page,
                    height: 30,
                    width: 30,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(ImageConstants.olx_ad_page),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Image.asset(ImageConstants.profile_account),
                SizedBox(width: 15),
                Text(
                  "Admin",
                  style: TextStyle(
                      color: ColorConstants.mainblack,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              width: double.infinity,
              height: 46,
              decoration: BoxDecoration(
                color: ColorConstants.green,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  "view and Edit profile",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Text(
                  "3 steps left",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 10,
                    color: Colors.yellow,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Container(
                    height: 10,
                    color: Colors.yellow,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Container(
                    height: 10,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Container(
                    height: 10,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Container(
                    height: 10,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "we are built on trust. help one another to get to know each other better.",
                    style: TextStyle(
                      color: ColorConstants.mainblack,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Image.asset(ImageConstants.package_prof),
            title: Text(
              "Buy packages & My orders",
              style: TextStyle(
                  color: ColorConstants.mainblack,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text("packages, orders, billing and invoices"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text(
              "Settings",
              style: TextStyle(
                  color: ColorConstants.mainblack,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            subtitle: Text("privacy and logout"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text(
              "Help & support",
              style: TextStyle(
                  fontSize: 20,
                  color: ColorConstants.mainblack,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Help centre and legal terms"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.language_outlined),
            title: Text(
              "Select language",
              style: TextStyle(
                  color: ColorConstants.mainblack,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text("English"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}

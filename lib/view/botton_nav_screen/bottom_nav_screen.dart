import 'package:flutter/material.dart';
import 'package:flutter_olx/utils/constants/color_constants.dart';
import 'package:flutter_olx/view/account_screen/account_screen.dart';
import 'package:flutter_olx/view/chats_screen/chats_screen.dart';
import 'package:flutter_olx/view/home_screen/home_screen.dart';
import 'package:flutter_olx/view/my_ads/my_ads.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;
  List<Widget> myScreen = [
    HomeScreen(),
    ChatScreen(),
    MyAds(),
    AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myScreen[selectedIndex],
      backgroundColor: Colors.white,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              // Outer container with gradient border
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: SweepGradient(
                    colors: [Colors.cyan, Colors.yellow, Colors.blue.shade900],
                    startAngle: 1.0,
                    endAngle: 3.14 * 2,
                  ),
                ),
              ),
              // Inner white circle with FloatingActionButton inside
              Positioned(
                child: CircleAvatar(
                  radius: 25,
                  child: FloatingActionButton(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    child: Icon(Icons.add, color: Colors.black),
                    backgroundColor: Colors.white,
                    elevation: 0, // Remove the shadow
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
              height: 18), // Adjust the spacing between the button and text
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              "Sell",
              style: TextStyle(
                color: ColorConstants.green,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SafeArea(
        child: SizedBox(
          height: 60, // Adjust the height to give more space for the FAB
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            backgroundColor: ColorConstants.mainwhite,
            selectedItemColor: ColorConstants.green,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble),
                label: "Chats",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline),
                label: "My Ads",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: "Account",
              ),
            ],
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}

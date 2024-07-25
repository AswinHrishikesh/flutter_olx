import 'package:flutter/material.dart';
import 'package:flutter_olx/utils/constants/color_constants.dart';
import 'package:flutter_olx/utils/constants/image_constants.dart';

class AllChatsScreen extends StatelessWidget {
  const AllChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Row(
            children: [
              FilterChip(
                label: Text('All'),
                onSelected: (bool value) {},
                selected: true,
                backgroundColor: Colors.grey.shade200,
                selectedColor: ColorConstants.light_green,
              ),
              SizedBox(width: 5),
              FilterChip(
                label: Text('Meeting'),
                onSelected: (bool value) {},
                backgroundColor: Colors.grey.shade200,
                selectedColor: ColorConstants.green,
              ),
              SizedBox(width: 5),
              FilterChip(
                label: Text('unread'),
                onSelected: (bool value) {},
                backgroundColor: Colors.grey.shade200,
                selectedColor: ColorConstants.green,
              ),
              SizedBox(width: 5),
              FilterChip(
                label: Text('important'),
                onSelected: (bool value) {},
                backgroundColor: Colors.grey.shade200,
                selectedColor: ColorConstants.green,
              ),
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  child: Image.asset(
                    ImageConstants.chat_image_1,
                    height: 100,
                    width: 100,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "you’ve got no messages so far !",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Be the first one to begin a conversation",
                  style: TextStyle(
                    fontSize: 14,
                    color: ColorConstants.mainblack,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  decoration: BoxDecoration(
                    color: ColorConstants.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      // Add your onTap code here!
                    },
                    child: Text(
                      "Start Messaging",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

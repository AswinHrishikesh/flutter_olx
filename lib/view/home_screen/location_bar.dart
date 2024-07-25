import 'package:flutter/material.dart';
import 'package:flutter_olx/utils/constants/image_constants.dart';

class LocationBar extends StatelessWidget {
  const LocationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Image.asset(ImageConstants.olx_home_page),
          Spacer(),
          Icon(Icons.location_on_outlined),
          Text("Pune, Maharashtra")
        ],
      ),
    );
  }
}

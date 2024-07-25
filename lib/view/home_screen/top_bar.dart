import 'package:flutter/material.dart';
import 'package:flutter_olx/utils/constants/color_constants.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      color: ColorConstants.green,
    );
  }
}

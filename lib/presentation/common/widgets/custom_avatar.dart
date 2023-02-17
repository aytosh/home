import 'package:flutter/material.dart';
import 'package:school_management/gen/assets.gen.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.images.profileBackground.path,
          height: 152,
          width: 152,
        ),
        Image.asset(
          Assets.images.profilePicture.path,
          height: 152,
          width: 152,
        ),
      ],
    );
  }
}

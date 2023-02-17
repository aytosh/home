import 'package:flutter/material.dart';
import 'package:school_management/gen/assets.gen.dart';
import 'package:school_management/presentation/common/constants/colors.dart';

class Base extends StatelessWidget {
  final Widget? header;
  final Widget? body;

  const Base({super.key, this.header, this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              Assets.images.background.path,
              fit: BoxFit.fill,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (header != null)
                  Container(
                    height: 76,
                    width: double.infinity,
                    color: kPrimaryColor,
                    child: header,
                  ),
                body ?? const SizedBox.shrink(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

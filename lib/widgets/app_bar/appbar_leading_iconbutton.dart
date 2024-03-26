import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarLeadingIconbutton extends StatelessWidget {
  AppbarLeadingIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 28.v,
          width: 32.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup27,
          ),
        ),
      ),
    );
  }
}

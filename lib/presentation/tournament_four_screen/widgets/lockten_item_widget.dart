import '../models/lockten_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';

// ignore: must_be_immutable
class LocktenItemWidget extends StatelessWidget {
  LocktenItemWidget(
    this.locktenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LocktenItemModel locktenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.only(
          left: 26.h,
          top: 6.v,
          bottom: 6.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          locktenItemModelObj.lockTen!.value,
          style: TextStyle(
            color: theme.colorScheme.onPrimaryContainer,
            fontSize: 13.fSize,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
          ),
        ),
        deleteIcon: CustomImageView(
          imagePath: ImageConstant.imgLock2,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(),
        ),
        onDeleted: () {},
        selected: (locktenItemModelObj.isSelected?.value ?? false),
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        selectedColor: theme.colorScheme.onPrimary.withOpacity(1),
        shape: (locktenItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: theme.colorScheme.onPrimary.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: theme.colorScheme.primary,
                  width: 3.h,
                ),
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              ),
        onSelected: (value) {
          locktenItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}

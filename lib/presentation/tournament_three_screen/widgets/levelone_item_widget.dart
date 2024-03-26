import '../models/levelone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';

// ignore: must_be_immutable
class LeveloneItemWidget extends StatelessWidget {
  LeveloneItemWidget(
    this.leveloneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LeveloneItemModel leveloneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 26.h,
          vertical: 6.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          leveloneItemModelObj.levelOne!.value,
          style: TextStyle(
            color: theme.colorScheme.onPrimaryContainer,
            fontSize: 13.fSize,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
          ),
        ),
        selected: (leveloneItemModelObj.isSelected?.value ?? false),
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        selectedColor: theme.colorScheme.onPrimary.withOpacity(1),
        shape: (leveloneItemModelObj.isSelected?.value ?? false)
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
          leveloneItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}

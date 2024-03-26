import 'package:ludu_365/presentation/rate_us_screen/models/rate_us_model.dart';

import 'controller/rate_us_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/widgets/custom_outlined_button.dart';
import 'package:ludu_365/widgets/custom_rating_bar.dart';


// ignore: must_be_immutable
class RateUsScreen extends GetWidget<RateUsController> {
  RateUsScreen({Key? key}) : super(key: key);

  RateUsController controller = Get.put(RateUsController(RateUsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(23.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("lbl_rate_us".tr,
                          style: CustomTextStyles.titleLargeYellow700),
                      SizedBox(height: 33.v),

                      // CustomTextFormField(
                      //     controller: controller.rateLuduChampionshipController,
                      //     hintText: "msg_rate_ludu_365_championship".tr,
                      //     hintStyle: CustomTextStyles.bodyMedium14,
                      //     textInputAction: TextInputAction.done,
                      //     contentPadding: EdgeInsets.symmetric(
                      //         horizontal: 15.h, vertical: 10.v)),

                      Container(
                        width: 314,
                        height: 38,
                        decoration: ShapeDecoration(
                          color: Color(0xFF1F1F1F),
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 2, color: Color(0xFFF4B30B)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, top: 5),
                          child: Text(
                            "msg_rate_ludu_365_championship".tr,
                            overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles.bodyMedium14,
                          ),
                        ),
                      ),
                      

                      SizedBox(height: 26.v),

                      _buildSixtySix(),
                      SizedBox(height: 22.v),

                      CustomOutlinedButton(
                          height: 26.v,
                          width: 116.h,
                          text: "lbl_submit".tr,
                          buttonStyle: CustomButtonStyles.outlineGray,
                          buttonTextStyle: CustomTextStyles.titleSmall14),
                      SizedBox(height: 15.v),
                      CustomOutlinedButton(
                          height: 26.v,
                          width: 116.h,
                          text: "lbl_not_now".tr,
                          buttonStyle: CustomButtonStyles.outlineGray,
                          buttonTextStyle: CustomTextStyles.titleSmall14),
                      Spacer(),
                    ]))));
  }

  /// Section Widget
  Widget _buildSixtySix() {
    return Container(
        width: 314.h,
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 8.v),
        decoration: AppDecoration.outlinePrimary5
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder3),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 272.h,
                  margin: EdgeInsets.only(right: 11.h),
                  child: Text("msg_tell_others_what".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMedium14)),
              SizedBox(height: 8.v),
              CustomRatingBar(alignment: Alignment.center, initialRating: 0)
            ]));
  }

  /// Navigates to the contractScreen when the action is triggered.
  onTapImgContractThirtyOne() {
    Get.toNamed(
      AppRoutes.contractScreen,
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapImgHomepageEleven() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}

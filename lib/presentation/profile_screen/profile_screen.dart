import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/core/utils/validation_functions.dart';
import 'package:ludu_365/presentation/profile_two_dialog/controller/profile_two_controller.dart';
import 'package:ludu_365/presentation/profile_two_dialog/profile_two_dialog.dart';
import 'package:ludu_365/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ludu_365/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:ludu_365/widgets/app_bar/custom_app_bar.dart';
import 'package:ludu_365/widgets/custom_elevated_button.dart';
import 'package:ludu_365/widgets/custom_text_form_field.dart';

import 'controller/profile_controller.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
  ProfileScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Obx(() {
          return LoadingOverlay(
            opacity: 0.1,
            isLoading: controller.authController.isLoading.value,
            progressIndicator: SpinKitSpinningLines(
              color: Colors.yellow,
              size: 40,
            ),
            child: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Form(
                  key: _formKey,
                  child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 17.h, vertical: 28.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        _buildUsernameRow(),
                        SizedBox(height: 23.v),
                        _buildPasswordRow(),
                        SizedBox(height: 40.v),
                        CustomElevatedButton(
                            width: 94.h,
                            text: "lbl_login".tr,
                            margin: EdgeInsets.only(right: 107.h),
                            onPressed: () {
                              controller.authController.tryToSignIn(
                                userName: controller.userNameController.text,
                                password: controller.passwordController.text,
                              );
                              // onTapLogin();
                            }),
                        SizedBox(height: 5.v)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 49.h,
        leading: AppbarLeadingIconbutton(
            onTap: () {
              Get.back();
            },
            imagePath: ImageConstant.imgGroup27,
            margin: EdgeInsets.only(left: 17.h, top: 14.v, bottom: 14.v)),
        actions: [
          AppbarSubtitleOne(
              text: "lbl_profile".tr,
              margin: EdgeInsets.fromLTRB(121.h, 15.v, 130.h, 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildUsernameRow() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 7.v, bottom: 6.v),
              child:
                  Text("msg_username".tr, style: theme.textTheme.bodyMedium)),
          CustomTextFormField(
              width: 200.h,
              controller: controller.userNameController,
              hintText: "lbl_username".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              })
        ]));
  }

  /// Section Widget
  Widget _buildPasswordRow() {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 5.v, bottom: 8.v),
                  child: Text("msg_password".tr,
                      style: theme.textTheme.bodyMedium)),
              CustomTextFormField(
                  width: 200.h,
                  controller: controller.passwordController,
                  hintText: "lbl_password".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: true)
            ]));
  }

  /// Displays a dialog with the [ProfileTwoDialog] content.
  onTapLogin() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: ProfileTwoDialog(
        Get.put(
          ProfileTwoController(),
        ),
      ),
    ));
  }
}

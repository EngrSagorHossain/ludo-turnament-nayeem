import '../notifications_screen/widgets/viewhierarchy_item_widget.dart';
import 'controller/notifications_controller.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ludu_365/widgets/app_bar/appbar_subtitle.dart';
import 'package:ludu_365/widgets/app_bar/custom_app_bar.dart';

class NotificationsScreen extends GetWidget<NotificationsController> {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.only(left: 23.h, top: 29.v, right: 23.h),
                  child: Obx(() => ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 20.v);
                      },
                      itemCount: controller.notificationsModelObj.value
                          .viewhierarchyItemList.value.length,
                      itemBuilder: (context, index) {
                        ViewhierarchyItemModel model = controller
                            .notificationsModelObj
                            .value
                            .viewhierarchyItemList
                            .value[index];
                        return ViewhierarchyItemWidget(model);
                      }))),
            )));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 54.h,
        leading: AppbarLeadingIconbutton(
          
          
          
            imagePath: ImageConstant.imgGroup27,
            margin: EdgeInsets.only(left: 22.h, top: 14.v, bottom: 14.v),
            onTap: () {
              Get.back();
              
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_notifications".tr));
  }

}
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/home_screen/controller/auth_controller.dart';
import 'package:ludu_365/presentation/payment_method_screen/models/payment_method_model.dart';

import '../../../utils/api_endpoints.dart';

/// A controller class for the PaymentMethodScreen.
///
/// This class manages the state of the PaymentMethodScreen, including the
/// current paymentMethodModelObj
class PaymentMethodController extends GetxController {
  AuthController authController = Get.put(AuthController());
  Rx<PaymentMethodModel> paymentMethodModelObj = PaymentMethodModel().obs;

  final methodName = 'bKash'.obs;

  TextEditingController phoneNumberRowController = TextEditingController();

  TextEditingController transactionIdRowController = TextEditingController();
  TextEditingController transactionIAmountController = TextEditingController();

  final isLoading = false.obs;
  //sign in
  void tryToTournamentRegister() async {
    print('called');
    isLoading.value = true;
    var data = {
      'tournament_id': 1,
      'payments_method': methodName.value,
      'transaction_id': transactionIdRowController.text,
      'account_no': phoneNumberRowController.text,
      'amount': transactionIAmountController.text,
      'status': 'pending',
    };
    print(authController.token.value);
    print(data);
    print(kTournamentRegister);
    var dio = Dio();

    try {
      final response = await dio.post(
        kTournamentRegister,
        options: Options(
          headers: {
            'accept': '*/*',
            'Authorization': 'Bearer ${authController.token.value}',
          },
        ),
        data: data,
      );
      print(response.data);
      print('Tournament Register');
      int? statusCode = response.statusCode;
      isLoading.value = false;
      if (statusCode == 201) {
        Get.dialog(
          AlertDialog(
            backgroundColor: Colors.transparent,
            contentPadding: EdgeInsets.zero,
            insetPadding: const EdgeInsets.only(left: 0, right: 0),
            content: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.yellow, // Yellow border color
                  width: 1.0, // 1px border width
                ),
              ),
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Your request has been submitted successfully..!!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Get.offAllNamed(
                              AppRoutes.homeScreen); // Navigate to home screen
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Cancel'),
                        ),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red, // Text color
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Get.offAllNamed(
                              AppRoutes.homeScreen); // Navigate to home screen
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Go Home'),
                        ),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue, // Text color
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );

        Get.snackbar(
          'Success',
          "Your request has been submitted successfully..!!",
          backgroundColor: Colors.green,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
      } else {
        Get.snackbar(
          'Failed',
          "Something is wrong. Please try again.",
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      print(e);
      isLoading.value = false;
      Get.snackbar(
        'Failed',
        "Something is wrong. Please try again.",
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}

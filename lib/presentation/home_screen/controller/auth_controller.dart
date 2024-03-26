import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

import '../../../utils/api_endpoints.dart';
import '../models/UserProfile.dart';
class AuthController extends GetxController {
  final isLoading = false.obs;
  final loadingChangePassword = false.obs;
  final loadingResetPassword = false.obs;
  final profile = UserProfile().obs;
  final token = ''.obs;
  final _dio = Dio();

  late StreamingSharedPreferences preferences;

  //SignOut
  void tryToSignOut() async {
    isLoading.value = true;
    var dio = Dio();
    try {
      final response = await dio.get(
        kLogout,
        options: Options(
          headers: {
            'accept': '*/*',
            'Authorization': 'Bearer ${token.value}',
          },
        ),
      );
      int? statusCode = response.statusCode;
      isLoading.value = false;
      print(response.statusCode);
      if (statusCode == 200) {
        preferences.clear();
        // Get.offAll(LoginView());
        token.value = '';
      } else {}
    } catch (e) {
      print(e);
      isLoading.value = false;
      preferences.clear();
      // Get.offAll(LoginView());
      token.value = '';
    }
  }

//sign in

  final TextEditingController passWordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  void tryToSignIn() async {
    isLoading.value = true;
    var data = {
      'phone': phoneController.text,
      'password': passWordController.text,
    };
    var dio = Dio();

    try {
      final response = await dio.post(
        kLogin,
        data: data,
      );

      int? statusCode = response.statusCode;
      isLoading.value = false;
      if (statusCode == 200) {
        profile.value = UserProfile.fromJson(response.data);
        token.value = profile.value.token!;
        //SET TO LOCAL
        preferences.setString('token', response.data['token']);
        preferences.setString('profile', jsonEncode(response.data));

        Get.snackbar(
          'Success',
          "You are Logged In now.",
          backgroundColor: Colors.green,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );

        // Get.offAll(const BottomNavigationView());
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
//sign up

  final TextEditingController regPasswordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController regPhoneNumberController =
  TextEditingController();
  final TextEditingController examYearController = TextEditingController();
  final TextEditingController collegeController = TextEditingController();

  void tryToSignUp() async {
    isLoading.value = true;
    var data = {
      'full_name': fullNameController.text,
      'email': emailController.text,
      'password': regPasswordController.text,
      'phone': regPhoneNumberController.text,
      'hsc_exam_year': examYearController.text,
      'college_name': collegeController.text,
      'package_status': 'active',
    };
    var dio = Dio();

    try {
      final response = await dio.post(
        kRegister,
        data: data,
      );

      int? statusCode = response.statusCode;
      isLoading.value = false;
      if (statusCode == 201) {
        profile.value = UserProfile.fromJson(response.data);
        token.value = profile.value.token!;
        preferences.setString('token', response.data['token']);
        preferences.setString('profile', jsonEncode(response.data));

        Get.snackbar(
          'Success',
          "You are Logged In now.",
          backgroundColor: Colors.green,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );

        // Get.offAll(const BottomNavigationView());
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

  //catagories api
  final catagories = {}.obs;
  Future<void> fetchIdToCategories({required packId}) async {
    print('called');
    isLoading.value = true;
    try {
      final response = await _dio.get(
        kCategory(packId: packId),
        options: Options(
          headers: {
            // Set any required headers
            'accept': '*/*',
            'Authorization': 'Bearer ${token.value}',
          },
        ),
      );

      catagories.value = response.data;

      isLoading.value = false;
      if (response.statusCode == 200) {
        Get.snackbar(
          'Success',
          "You are Logged In now.",
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
      isLoading.value = false;
      print(e);
      Get.snackbar(
        'Failed',
        "Something is wrong. Please try again.",
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

//subCatagories api
  final subCatagories = {}.obs;
  Future<void> fetchIdToSubCategories({required catId}) async {
    isLoading.value = true;
    try {
      final response = await _dio.get(
        kSubCategory(catId: catId),
        options: Options(
          headers: {
            // Set any required headers
            'accept': '*/*',
            'Authorization': 'Bearer ${token.value}',
          },
        ),
      );
      subCatagories.value = response.data;

      isLoading.value = false;
      if (response.statusCode == 200) {
        Get.snackbar(
          'Success',
          "You are Logged In now.",
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
      isLoading.value = false;
      print(e);
      Get.snackbar(
        'Failed',
        "Something is wrong. Please try again.",
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  //exam api
  final examList = {}.obs;
  Future<void> fetchIdToExamList({required subCatId}) async {
    isLoading.value = true;
    try {
      final response = await _dio.get(
        kExamList(subCatId: subCatId),
        options: Options(
          headers: {
            'accept': '*/*',
            'Authorization': 'Bearer ${token.value}',
          },
        ),
      );
      examList.value = response.data;

      isLoading.value = false;
      if (response.statusCode == 200) {
        Get.snackbar(
          'Success',
          "You are Logged In now.",
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

  //INITIALIZE THE APPLICATION
  @override
  void onInit() {
    super.onInit();
    initialize();
  }

  void initialize() async {
    preferences = await StreamingSharedPreferences.instance;
    preferences.getString('token', defaultValue: '').listen((value) {
      token.value = value;
    });
    preferences.getString('profile', defaultValue: '').listen((value) {
      if (value.isNotEmpty) {
        profile.value = UserProfile.fromJson(jsonDecode(value));
      }
    });
  }

  final myPurchasePackageIds = [].obs;
  Future<void> fetchPurchasePackageIds() async {
    try {
      print(kPurchasedPackageListIds);
      final response = await _dio.get(
        kPurchasedPackageListIds,
        options: Options(
          headers: {
            'accept': '*/*',
            'Authorization': 'Bearer ${token.value}',
          },
        ),
      );

      print(response.data);

      if (response.statusCode == 200) {
        myPurchasePackageIds.clear();

        myPurchasePackageIds.value = response.data;
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

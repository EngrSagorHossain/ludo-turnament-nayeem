import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:just_audio/just_audio.dart';
import 'package:ludu_365/core/app_export.dart' hide FormData, MultipartFile;
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

import '../../../utils/api_endpoints.dart';
import '../../profile_two_dialog/controller/profile_two_controller.dart';
import '../../profile_two_dialog/profile_two_dialog.dart';
import '../models/UserProfile.dart';

class AuthController extends GetxController {
  final isLoading = false.obs;
  final loadingChangePassword = false.obs;
  final loadingResetPassword = false.obs;
  final profile = UserProfile().obs;
  final token = ''.obs;
  final _dio = Dio();

  late StreamingSharedPreferences preferences;
  //Play Audio
  final player1 = AudioPlayer();

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
        Get.offAllNamed(AppRoutes.homeScreen);
        token.value = '';
      } else {}
    } catch (e) {
      print(e);
      isLoading.value = false;
      preferences.clear();
      Get.offAllNamed(AppRoutes.homeScreen);
      token.value = '';
    }
  }

//sign in
  void tryToSignIn({required String userName, required String password}) async {
    print('called');
    isLoading.value = true;
    var data = {
      'username': userName,
      'password': password,
    };
    var dio = Dio();

    try {
      final response = await dio.post(
        kLogin,
        data: data,
      );
      print(response.data);
      print('login data');
      int? statusCode = response.statusCode;
      isLoading.value = false;
      if (statusCode == 200) {
        profile.value = UserProfile.fromJson(response.data);
        token.value = profile.value.token!;
        //SET TO LOCAL
        preferences.setString('token', response.data['token']);
        preferences.setString('profile', jsonEncode(response.data));
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
//sign up

  final TextEditingController regPasswordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController regPhoneNumberController =
      TextEditingController();
  final TextEditingController examYearController = TextEditingController();
  final TextEditingController collegeController = TextEditingController();

  //pic image
  final image = Rxn<File>();

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      image.value = File(pickedImage.path);
    } else {
      print('No image selected.');
    }
  }

  void tryToSignUp({
    required String name,
    required String phone,
    required String username,
    required String address,
    required String email,
    required String password,
  }) async {
    isLoading.value = true;
    FormData formData = FormData.fromMap({
      'name': name,
      'phone': phone,
      'username': username,
      'address': address,
      'email': email,
      'password': password,
      'image': await MultipartFile.fromFile(image.value!.path),
    });
    var dio = Dio();
    print(formData.toString());
    print('register data');
    try {
      final response = await dio.post(
        kRegister,
        data: formData,
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
        Get.offAllNamed(AppRoutes.homeScreen);
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
    await player1.setAsset('assets/audios/ludo_king.mp3');
    await player1.play();
    await player1.setLoopMode(LoopMode.one);
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
}

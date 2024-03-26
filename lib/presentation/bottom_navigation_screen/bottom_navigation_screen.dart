import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ludu_365/core/utils/image_constant.dart';
import 'package:ludu_365/presentation/contract_screen/contract_screen.dart';
import 'package:ludu_365/presentation/home_screen/home_screen.dart';
import 'package:ludu_365/presentation/rate_us_screen/rate_us_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavBar> {
  final _pages = [
    ContractScreen(),
    HomeScreen(),
    RateUsScreen(),
  ];

  RxInt _selectedIndex = 1.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.amber,
        backgroundColor: Colors.black,
        currentIndex: _selectedIndex.value,
        onTap: (index) {
          setState(() {
            _selectedIndex.value = index;
          });
        },
      
       
        items: [


          BottomNavigationBarItem(
            icon: Image.asset(
              ImageConstant.imgContract31,
              width: 25,
              height: 25,
            ),
            activeIcon: Image.asset(
              ImageConstant.imgContract31,
              width: 25,
              height: 25,
            ),
            label: "lbl_contract".tr,
          ),


          BottomNavigationBarItem(
            icon: Image.asset(
              ImageConstant.imgHomepage11,
              width: 25,
              height: 25,
            ),
            activeIcon: Image.asset(
              ImageConstant.imgHomepage11,
              width: 25,
              height: 25,
            ),
            label: "lbl_home".tr,
          ),



          BottomNavigationBarItem(
            icon: Image.asset(
              ImageConstant.imgStar21,
              width: 25,
              height: 25,
            ),
            activeIcon: Image.asset(
              ImageConstant.imgStar21,
              width: 25,
              height: 25,
            ),
            label: "lbl_rate".tr,
          ),


        ],
      ),
      body: _pages[_selectedIndex.value],
    );
  }
}

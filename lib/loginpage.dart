import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'widget/button.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg2.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomButton(
              bgcolor: Colors.white,
              title: 'Login',
              color: Colors.black,
              onPressed: () {
                Get.toNamed('/loginpage2');
              },
            ),
            31.verticalSpace,
            CustomButton(
              bgcolor: Colors.blue,
              title: 'Get Started',
              color: Colors.white,
            ),
            39.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Privacy Policy',
                  style: TextStyle(fontSize: 12.sp, color: Color(0xff576898)),
                ),
                20.horizontalSpace,
                Text(
                  'Terms of Use',
                  style: TextStyle(fontSize: 12.sp, color: Color(0xff576898)),
                ),
              ],
            ),
            87.verticalSpace
          ],
        ),
      ),
    );
  }
}

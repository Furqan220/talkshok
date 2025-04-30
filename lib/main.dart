import 'package:talk_shok/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'loginpage2.dart';
// import 'home.dart';
import 'mainpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return (GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/loginpage2',
          getPages: [
            GetPage(
              name: '/mymainpage',
              page: () => mymainpage(),
            ),
            GetPage(
              name: '/loginpage',
              page: () => loginpage(),
            ),
            // GetPage(name: '/homepage', page: () => myhomepage()),
            GetPage(
              name: '/loginpage2',
              page: () => loginpage2(),
            )
          ],
        ));
      },
    );
  }
}

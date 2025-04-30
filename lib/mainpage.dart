import 'package:talk_shok/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'loginpage.dart';

class mymainpage extends StatefulWidget {
  const mymainpage({super.key});

  @override
  State<mymainpage> createState() => _mymainpageState();
}

class _mymainpageState extends State<mymainpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 350, left: 50),
                child: Text(
                  'Talk Shok',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'GentiumBookPlus',
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 450, left: 80),
                child: Row(
                  children: [
                    Text(
                      'Lets talk',
                      style: TextStyle(fontSize: 30.r, color: Colors.white),
                    ),
                    10.horizontalSpace,
                    CircleAvatar(
                      radius: 25.r,
                      child: IconButton(
                          color: Colors.white,
                          onPressed: () {
                            Get.toNamed('/loginpage');
                          },
                          icon: Icon(Icons.arrow_forward)),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}

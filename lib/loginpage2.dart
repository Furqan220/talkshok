import 'package:talk_shok/home.dart';
import 'package:talk_shok/model.dart';
import 'package:talk_shok/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class loginpage2 extends StatefulWidget {
  const loginpage2({super.key});

  @override
  State<loginpage2> createState() => _loginpage2State();
}

class _loginpage2State extends State<loginpage2> {
  ChatModel? sourceChats;
  List<ChatModel> chatmodels = [
    ChatModel(
      name: "Furqan",
      isGroup: false,
      currentMessage: "Hi Everyone",
      time: "4:00",
      icon: "person.svg",
      id: 1,
    ),
    ChatModel(
      name: "Hammad",
      isGroup: false,
      currentMessage: "Hi Kishor",
      time: "13:00",
      icon: "person.svg",
      id: 2,
    ),
    ChatModel(
      name: "Zubair",
      isGroup: false,
      currentMessage: "Hi Dev Stack",
      time: "8:00",
      icon: "person.svg",
      id: 3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg2.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 172.r, horizontal: 50.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login to your account',
                style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              14.verticalSpace,
              ...List.generate(
                chatmodels.length,
                (index) => CustomButton(
                  onPressed: () {
                    sourceChats = chatmodels.removeAt(index);
                    Get.off(() => myhomepage(
                          chatsModels: chatmodels,
                          sourceChat: sourceChats!,
                        ));
                  },
                  bgcolor: Colors.white,
                  color: Colors.blue,
                  title: "${chatmodels[index].name}",
                ),
              )
              // Textfield1(
              //   title: 'username',
              // ),
              // 14.verticalSpace,
              // Textfield1(
              //   title: 'password',
              // )
            ],
          ),
        ),
      ),
    );
  }
}

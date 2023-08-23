
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_comerce/utils/theme.dart';
import 'package:new_comerce/view/widgets/utils.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
   const AuthButton({
     required this.text,
     required this.onPressed,

     Key? key,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Get.isDarkMode ? mainColor : pinkClr,
          minimumSize: const Size(360, 50),
        ),
        child:TextUtils(
          color: Colors.white,
          text: text,
          fontSize: 17,
          fontWeight: FontWeight.bold,
          underLine: TextDecoration.none,
        ),
    );
  }
}

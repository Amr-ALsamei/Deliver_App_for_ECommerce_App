import 'package:deliverapp/Core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustumButtonAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustumButtonAuth({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(horizontal: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        onPressed: onPressed,
        color: Appcolors.primarycolor,
        textColor: Colors.white,
        child: Text(text),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustumFormText extends StatelessWidget {
  final String text;
  const CustumFormText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: Text(text,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1,),
                 );
  }
}
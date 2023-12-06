
import 'package:flutter/widgets.dart';

class CustumFormLable extends StatelessWidget {
  final String label;
  const CustumFormLable({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(label,style:TextStyle(fontSize: 30,
                 fontWeight: FontWeight.bold,
                 ) ,
                 textAlign:TextAlign.center ,);
  }
}
import 'package:deliverapp/Core/function/checkInternet.dart';
import 'package:flutter/material.dart';

class TestCode extends StatefulWidget {
  const TestCode({super.key});

  @override
  State<TestCode> createState() => _TestCodeState();
}

 

class _TestCodeState extends State<TestCode> {

 Checknet()async{
  var res=await CheckInternet();
  print(res);
 }
  @override
  void initState() {
    Checknet();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Hello TestCode"),
      ),
      body: Center(
        child: Text("Test HHHHHHH",style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
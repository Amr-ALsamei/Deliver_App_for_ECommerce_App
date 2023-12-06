//Crud => Create && read  && Update && delete

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:deliverapp/Core/class/statusrequest.dart';
import 'package:deliverapp/Core/function/checkInternet.dart';
import 'package:http/http.dart' as http;

class Crud{
  //Either to Support the funactionality programming
  Future<Either<StatusRequest,Map>> postData(String linkurl,Map data)async{
     try{
        print("Before CheckInternet");
      if(await CheckInternet()){
        print("After CheckInternet");
        var response=await http.post(Uri.parse(linkurl),body: data);
        print(response.statusCode);
        if(response.statusCode==200|| response.statusCode==201){
          Map responsebody=jsonDecode(response.body);
          // print("object2");
          return Right(responsebody);
        }else{
          return Left(StatusRequest.serverfailure);
        }
      }else{
        return Left(StatusRequest.offlinefailure);
      }

     }catch(_){
         return Left(StatusRequest.serverException);
     }

  }
}
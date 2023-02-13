//
// import 'dart:convert';
// import 'dart:developer';
// import 'package:http/http.dart' as http;
// import 'package:state_notifier_provider/model/data_model.dart';
//
// Future<DataModel?>getData() async {
//
//   DataModel? result;
//   try {
//     final http.Response response = await http.get(
//         Uri.parse("https://jsonplaceholder.typicode.com/posts/2"));
//     if (response.statusCode == 200) {
//       final item = jsonDecode(response.body);
//       result = DataModel.fromJson(item);
//     }
//     else {
//       print('error');
//     }
//   }
//   catch (e) {
//     log(e.toString());
//   }
//   return result;
// }


import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart';
import 'package:state_notifier_provider/model/data_model.dart';

Future getData()async{
  DataModel? result;
  try{
    final Response response = await get(Uri.parse("https://jsonplaceholder.typicode.com/posts/2"));

    if(response.statusCode ==200){
     final item =  jsonDecode(response.body);
     result = DataModel.fromJson(item);
    }
    else {print('error');}
  }
      catch(e){
        log(e.toString() as num);
      }
 return result;
}
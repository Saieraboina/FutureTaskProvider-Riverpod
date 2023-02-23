

import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:state_notifier_provider/model/data_model.dart';


final getDataServiceProvider = Provider((ref) =>ApiService());

class ApiService{
  Future <DataModel?>getData()async{
    DataModel? result;
    try{
      final Response response = await get(Uri.parse("https://jsonplaceholder.typicode.com/posts/2"));

      if(response.statusCode ==200){
        final item =  jsonDecode(response.body);
        print(item);
        result = DataModel.fromJson(item);
      }
      else {print('error');}
    }
    catch(e){
      throw Exception('error ');
    }
    return result;
  }
}

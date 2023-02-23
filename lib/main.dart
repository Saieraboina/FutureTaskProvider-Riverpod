import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier_provider/UI/provider_demo_screen.dart';
import 'package:state_notifier_provider/model/data_model.dart';
import 'package:state_notifier_provider/service/user_service.dart';


final watchGetDataServiceProvider = FutureProvider<DataModel?>((ref)async {
 return ref.watch(getDataServiceProvider).getData();
});

void main() {
  runApp( const ProviderScope(child: MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home:const ProviderDemoScreen()
      );
    
  }
}
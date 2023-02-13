import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier_provider/UI/provider_demo_screen.dart';

import 'data_class(class extending ChangeNotifier)/data_class.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>DataClass(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home:const ProviderDemoScreen()
      ),);
  }
}
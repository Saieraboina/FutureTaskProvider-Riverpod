import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier_provider/main.dart';

class ProviderDemoScreen extends StatelessWidget {
  const ProviderDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Demo"),
      ),
      body: Column(
        children: [
          Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              return Container(
                padding: const EdgeInsets.all(20),
                child: ref
                    .watch(watchGetDataServiceProvider)
                    .when(data:(data){
                      return Text(data!.title);
                } ,
                  error: (error,_){ return Text(error.toString());},
                  loading: (){return const CircularProgressIndicator();} ,)

              );
            },

          ),
        ],
      ),
    );
  }
}

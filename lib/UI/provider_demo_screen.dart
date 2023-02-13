
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier_provider/data_class(class%20extending%20ChangeNotifier)/data_class.dart';

class ProviderDemoScreen extends StatefulWidget {
  const ProviderDemoScreen({Key? key}) : super(key: key);

  @override
  _ProviderDemoScreenState createState() => _ProviderDemoScreenState();
}

class _ProviderDemoScreenState extends State<ProviderDemoScreen> {
  @override
  void initState() {
    super.initState();
    final postModel = Provider.of<DataClass>(context, listen: false);
    postModel.getPostData();
  }

  @override
  Widget build(BuildContext context) {
    final postModel = Provider.of<DataClass>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Demo"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: postModel.loading?const Center(
          child: CircularProgressIndicator(),
        ):Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40, bottom: 20),
                child: Text(
                  postModel.post?.title ?? "",
                  style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Text(postModel.post?.body ?? "")
            ],
          ),
        ),
      ),
    );
  }
}
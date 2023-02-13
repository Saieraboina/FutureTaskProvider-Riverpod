

class DataModel {
  String? title;
  String? body;

  DataModel({this.title, this.body});

  DataModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    body = json['body'];
  }
}

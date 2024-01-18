import 'dart:convert';

List<Mymodel> mymodelFromJson(String str) => List<Mymodel>.from(json.decode(str).map((x) => Mymodel.fromJson(x)));

String mymodelToJson(List<Mymodel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Mymodel {
    Mymodel({
        required this.userId,
        required this.id,
        required this.title,
        required this.body,
    });

    factory Mymodel.fromJson(Map<String, dynamic> json) => Mymodel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
    );

    String body;
    int id;
    String title;
    int userId;

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
    };
}

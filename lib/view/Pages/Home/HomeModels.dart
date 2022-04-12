// To parse this JSON data, do
//
//     final homeModels = homeModelsFromJson(jsonString);

import 'dart:convert';

List<HomeModels> homeModelsFromJson(String str) =>
    List<HomeModels>.from(json.decode(str).map((x) => HomeModels.fromJson(x)));

String homeModelsToJson(List<HomeModels> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HomeModels {
  HomeModels({
    required this.id,
    required this.image,
    required this.title,
    required this.rating,
    required this.price,
    required this.detail,
  });

  String id;
  String image;
  String title;
  String rating;
  String price;
  String detail;

  factory HomeModels.fromJson(Map<String, dynamic> json) => HomeModels(
      id: json["id"],
      image: json["image"],
      title: json["title"],
      rating: json["rating"],
      price: json["price"],
      detail: json["detail"]);

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "title": title,
        "rating": rating,
        "price": price,
        "detail": detail,
      };
  static List<HomeModels> parseResponse(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<HomeModels>((json) => HomeModels.fromJson(json)).toList();
  }

  static find(String responseBody, requestId) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    var filter = parsed.where((i) => i["id"] == requestId);

    return filter;
  }
}

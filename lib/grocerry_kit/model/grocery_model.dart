import 'dart:convert';

FoodModel foodModelFromJson(String str) => FoodModel.fromJson(json.decode(str));

String foodModelToJson(FoodModel data) => json.encode(data.toJson());

class FoodModel {
    List<ListElement> list;
    String status;

    FoodModel({
        this.list,
        this.status,
    });

    factory FoodModel.fromJson(Map<String, dynamic> json) => new FoodModel(
        list: new List<ListElement>.from(json["list"].map((x) => ListElement.fromJson(x))),
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "list": new List<dynamic>.from(list.map((x) => x.toJson())),
        "status": status,
    };
}

class ListElement {
    String image;
    String name;
    int price;

    ListElement({
        this.image,
        this.name,
        this.price,
    });

    factory ListElement.fromJson(Map<String, dynamic> json) => new ListElement(
        image: json["image"],
        name: json["name"],
        price: json["price"],
    );

    Map<String, dynamic> toJson() => {
        "image": image,
        "name": name,
        "price": price,
    };
}

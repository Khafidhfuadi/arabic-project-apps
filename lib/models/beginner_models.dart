part of 'models.dart';

List<BeginnerModel> beginnerModelFromJson(String str) => List<BeginnerModel>.from(json.decode(str).map((x) => BeginnerModel.fromJson(x)));

String beginnerModelToJson(List<BeginnerModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BeginnerModel {
    BeginnerModel({
        this.id,
        this.soal,
        this.bahasaArab,
        this.bahasaIndo,
        this.gambar,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    String soal;
    String bahasaArab;
    String bahasaIndo;
    String gambar;
    DateTime createdAt;
    DateTime updatedAt;

    factory BeginnerModel.fromJson(Map<String, dynamic> json) => BeginnerModel(
        id: json["id"],
        soal: json["soal"],
        bahasaArab: json["bahasa_arab"],
        bahasaIndo: json["bahasa_indo"],
        gambar: json["gambar"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "soal": soal,
        "bahasa_arab": bahasaArab,
        "bahasa_indo": bahasaIndo,
        "gambar": gambar,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}

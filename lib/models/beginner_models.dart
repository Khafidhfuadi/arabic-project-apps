part of 'models.dart';

List<BeginnerModels> beginnerModelsFromJson(String str) =>
    List<BeginnerModels>.from(
        json.decode(str).map((x) => BeginnerModels.fromJson(x)));

String beginnerModelsToJson(List<BeginnerModels> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BeginnerModels {
  BeginnerModels({
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

  factory BeginnerModels.fromJson(Map<String, dynamic> json) => BeginnerModels(
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

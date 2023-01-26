// To parse this JSON data, do
//
//     final dataDiri = dataDiriFromJson(jsonString);

import 'dart:convert';

DataDiri dataDiriFromJson(String str) => DataDiri.fromJson(json.decode(str));

String dataDiriToJson(DataDiri data) => json.encode(data.toJson());

class DataDiri {
    DataDiri({
        required this.id,
        required this.nama,
        required this.alamat,
        required this.noHp,
    });

    int id;
    String nama;
    String alamat;
    String noHp;

    factory DataDiri.fromJson(Map<String, dynamic> json) => DataDiri(
        id: json["id"],
        nama: json["nama"],
        alamat: json["alamat"],
        noHp: json["no_hp"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "alamat": alamat,
        "no_hp": noHp,
    };
}
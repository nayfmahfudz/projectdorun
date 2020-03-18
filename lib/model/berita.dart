import 'package:flutter/material.dart';


class Berita {
  Berita({this.id,this.nama,this.berita,this.id_group,this.image,this.tgl_awal,this.created_at,this.galeri,this.deskripsi,});
  int id;
  String nama;
  int berita;
  int id_group;
  String image;
  String deskripsi;
  bool galeri;
  String created_at;
  String tgl_awal;

  factory Berita.fromJson(Map<String, dynamic> json) {
    return Berita(
      id : json["id"],
      nama: json["nama"],
      berita: json["berita"],
      id_group : json["id_group"],
      tgl_awal : json["tgl_awal"],
      image: json["image"],
      galeri : json["galeri"],
      deskripsi : json["deskripsi"],
      created_at : json["created_at"],
    );
      
      
}
}

import 'package:cloud_firestore/cloud_firestore.dart';

class MangaProfile {
  final String id;
  final String title;
  final String autor;
  final String bannerUrl;
  final String thumbnailUrl;
  String description;
  List<Map<String, Object>> chapters;

  MangaProfile({this.id, this.bannerUrl, this.thumbnailUrl, this.title, this.description = "", this.autor, this.chapters});

  MangaProfile.fromDocumentSnapshot(DocumentSnapshot document):
    this.id = document.documentID,
    this.bannerUrl = document['banner'],
    this.thumbnailUrl = document['thumbnail'],
    this.title = document['title'],
    this.autor = document['authors'],
    this.description = document['description'] ?? "",
    this.chapters = List<Map<String, Object>>.from(document['chapters'] ?? []);
  
}
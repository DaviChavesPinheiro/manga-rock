import 'package:cloud_firestore/cloud_firestore.dart';

class MangaProfile {
  final String bannerUrl;
  final String thumbnailUrl;
  final String title;
  final String description;
  final String autor;
  final List<String> chapters;

  const MangaProfile({this.bannerUrl, this.thumbnailUrl, this.title, this.description, this.autor, this.chapters});

  MangaProfile.fromDocumentSnapshot(DocumentSnapshot document):
    this.bannerUrl = document['thumbnail'],
    this.thumbnailUrl = document['thumbnail'],
    this.title = document['title'],
    this.description = document['description'],
    this.autor = document['authors'],
    this.chapters = List<String>.from(document['chapters']) ?? [];
  
}
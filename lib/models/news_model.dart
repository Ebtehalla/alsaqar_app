// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class NewsModel {
  final String? title;
  final String? imageUrl;
  NewsModel({
    this.title,
    this.imageUrl,
  });

  NewsModel copyWith({
    String? title,
    String? imageUrl,
  }) {
    return NewsModel(
      title: title ?? this.title,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'imageUrl': imageUrl,
    };
  }

  factory NewsModel.fromMap(Map<String, dynamic> map) {
    return NewsModel(
      title: map['title'] != null ? map['title'] as String : null,
      imageUrl: map['imageUrl'] != null ? map['imageUrl'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'NewsModel(title: $title, imageUrl: $imageUrl)';

  @override
  bool operator ==(covariant NewsModel other) {
    if (identical(this, other)) return true;

    return other.title == title && other.imageUrl == imageUrl;
  }

  @override
  int get hashCode => title.hashCode ^ imageUrl.hashCode;
}

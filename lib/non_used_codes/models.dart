/*
// models.dart
class HadithMetadata {
  final int id;
  final int length;
  final ArabicMetadata arabic;

  HadithMetadata({required this.id, required this.length, required this.arabic});

  factory HadithMetadata.fromJson(Map<String, dynamic> json) {
    return HadithMetadata(
      id: json['id'] as int,
      length: json['length'] as int,
      arabic: ArabicMetadata.fromJson(json['arabic']),
    );
  }
}

class ArabicMetadata {
  final String title;
  final String author;
  final String introduction;

  ArabicMetadata({required this.title, required this.author, required this.introduction});

  factory ArabicMetadata.fromJson(Map<String, dynamic> json) {
    return ArabicMetadata(
      title: json['title'] as String,
      author: json['author'] as String,
      introduction: json['introduction'] as String,
    );
  }
}

class Chapter {
  final int id;
  final int bookId;
  final String arabic;
  String amharic; // Placeholder for the Amharic translation

  Chapter({required this.id, required this.bookId, required this.arabic, required this.amharic});

  factory Chapter.fromJson(Map<String, dynamic> json) {
    return Chapter(
      id: json['id'] as int,
      bookId: json['bookId'] as int,
      arabic: json['arabic'] as String,
      amharic: json['amharic'] as String,
    );
  }
}

class Hadith {
  final int id;
  final String arabic;
  String amharic; // Placeholder for the Amharic translation

  Hadith({required this.id, required this.arabic, required this.amharic});

  factory Hadith.fromJson(Map<String, dynamic> json) {
    return Hadith(
      id: json['id'] as int,
      arabic: json['arabic'] as String,
      amharic: json['amharic'] as String,
    );
  }
}
*/
//hypothesis for the json
/*class Hadith {
  final String title;
  final int startPage;
  final int endPage;

  Hadith({
    required this.title,
    required this.startPage,
    required this.endPage,
  });
}
*/
//hypothesis for the json
// hadith_model.dart
class Hadith {
  final String hadith;
  final String translation;

  Hadith({required this.hadith, required this.translation});
}

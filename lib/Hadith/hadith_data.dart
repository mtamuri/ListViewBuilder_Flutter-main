/*import 'package:flutter/services.dart';
import 'dart:convert';
import 'hadith_model.dart';

Future<List<Hadith>> loadHadithsFromJson() async {
  String jsonData = await rootBundle.loadString('assets/hadiths.json');
  final List<dynamic> data = json.decode(jsonData);

  List<Hadith> hadiths = data.map((item) => Hadith.fromJson(item)).toList();

  return hadiths;
}
*/
//hypothesis for the json
// hadith_data.dart
import 'hadith_model.dart';

List<Hadith> hadithList = [
  Hadith(
    hadith:'1',

    translation:'1'
      ),
  Hadith(
      hadith:'2',

      translation:'2'
  ),
  Hadith(
      hadith:'3',

      translation:'3'
  ),
  Hadith(
      hadith:'4',

      translation:'4'
  ),

];

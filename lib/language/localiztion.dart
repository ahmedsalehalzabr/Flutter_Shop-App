
import 'package:get/route_manager.dart';
import 'package:new_comerce/language/ar.dart';
import 'package:new_comerce/language/en.dart';
import 'package:new_comerce/language/fr.dart';
import 'package:new_comerce/utils/my_string.dart';




class LocaliztionApp extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    ene: en,
    ara: ar,
    frf: fr,
  };
}
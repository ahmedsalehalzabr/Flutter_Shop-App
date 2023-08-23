

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:new_comerce/language/localiztion.dart';
import 'package:new_comerce/logic/controllers/theme_controller.dart';
import 'package:new_comerce/routes/routes.dart';

import 'utils/my_string.dart';
import 'utils/theme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  // await Firebase.initializeApp( options: const FirebaseOptions(
  //   apiKey: "XXX",
  //   appId: "XXX",
  //   messagingSenderId: "XXX",
  //   projectId: "XXX",
  // ),);
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Asroo Shop',
      debugShowCheckedModeBanner: false,
      locale: Locale(GetStorage().read<String>('lang').toString()),
      translations: LocaliztionApp(),
      fallbackLocale: Locale(ene),
      theme: ThemesApp.light,
      darkTheme: ThemesApp.dark,
      themeMode: ThemeController().themeDataGet,

      initialRoute:   AppRoutes.welcome,
      getPages: AppRoutes.routes,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tutorial_app/schdule_mentees/db/db_helper.dart';
import 'package:tutorial_app/schdule_mentees/services/theme_services.dart';
import 'package:tutorial_app/schdule_mentees/ui/pages/home_page.dart';
import 'package:tutorial_app/schdule_mentees/ui/theme.dart';


import '../main.dart';
import 'datepicker.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.initDb();
  await GetStorage.init();

}
class MySchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      home: HomePage(),
    );
  }
}

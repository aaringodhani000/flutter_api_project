import 'package:flutter/material.dart';
import 'package:flutter_api_project/color_constatnt.dart';
import 'package:flutter_api_project/helper_function/my_text_style.dart';
import 'package:flutter_api_project/screens/Home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'API Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: appPrimary),
        primarySwatch: MaterialColor(primary, swatch),
        useMaterial3: true,
        fontFamily: "Inter",
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: appPrimary,
          centerTitle: false,
          titleTextStyle: MyTextStyle.semiBold.copyWith(
          fontSize: 19,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}

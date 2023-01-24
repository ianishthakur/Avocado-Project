import 'package:avocado/ui/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Palette {
  static const Color primary = Color(0xFF2F4D7D);
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  MaterialColor mycolor = const MaterialColor(
    0xFF05113b,
    <int, Color>{
      50: Color(0xFF05113b),
      100: Color(0xFF05113b),
      200: Color(0xFF05113b),
      300: Color(0xFF05113b),
      400: Color(0xFF05113b),
      500: Color(0xFF05113b),
      600: Color(0xFF05113b),
      700: Color(0xFF05113b),
      800: Color(0xFF05113b),
      900: Color(0xFF05113b),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: mycolor),
      home:const HomePage(),
    );
  }
}

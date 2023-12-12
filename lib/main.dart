import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login_page.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/utlies/routes.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
     fontFamily: GoogleFonts.lato().fontFamily,),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ) ,
      initialRoute: "/",
      routes: {
        "/" : (context) => LoginPage(),
        MyRoutes.homeRoutes :(context) => HomePage(),
        MyRoutes.loginRoutes :(context) => LoginPage(),

      },
    );
  }
}
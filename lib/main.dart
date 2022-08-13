import 'package:flutter/material.dart';
import 'package:game_streaming/app/presentation/home/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        inputDecorationTheme: custumInputDecorationTheme(),

        hintColor: const Color(0xffF4F3FC),
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xff000000),
      ),
      home: const HomeView(),
    );
  }

  InputDecorationTheme custumInputDecorationTheme() {
    return InputDecorationTheme(
      border: custumuOutlineInputBorder(),
      hintStyle: const TextStyle(
        color: Color(0xff828282),
        fontFamily: 'Poppins',
        fontSize: 14,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
      ),
      enabledBorder: custumuOutlineInputBorder(),
      focusedBorder: custumuOutlineInputBorder(),
    );
  }

  OutlineInputBorder custumuOutlineInputBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffFFFFFF),
      ),
      borderRadius: BorderRadius.all(Radius.circular(16)),
    );
  }
}

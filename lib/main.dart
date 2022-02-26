import 'package:designs/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // status_bar_color
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home_screen',
        theme: ThemeData.light().copyWith(backgroundColor: Colors.black),
        routes: {
          'basic_design': (_) => const BasicDesignScreen(),
          'scroll_screen': (_) => const ScrollScreen(),
          'home_screen': (_) => const HomeScreen(),
        });
  }
}

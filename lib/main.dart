import 'package:flutter/material.dart';

import 'app/home/home_page.dart';
import 'app/slivers/with_sliver_app_bar_page.dart';
import 'app/slivers/with_sliver_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            maximumSize: MaterialStatePropertyAll(Size(200, 200)),
            minimumSize: MaterialStatePropertyAll(Size(200, 200)),
          ),
        ),
      ),
      routes: {
        '/': (_)=> const HomePage(),
        '/sliver_app_bar': (_)=> const WithSliverAppBarPage(),
        '/sliver_list': (_)=> const WithSliverListPage(),
      },
      
    );
  }
}

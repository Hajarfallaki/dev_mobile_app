import 'package:flutter/material.dart';
import 'Screens/map_page.dart';
import 'Screens/home_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      title: "Flutter Application",
//home: HomePage(),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),

        '/pagemap': (context) => MapPage(),
      },
    );
  }
}
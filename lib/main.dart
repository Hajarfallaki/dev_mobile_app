import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Screens/home_page.dart';
import 'Screens/LoginPage.dart';
import 'Screens/map_page.dart';
import 'Screens/RegisterPage.dart';
import 'firebase_options.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
          useMaterial3: true),
      title: 'Hajar elfallaki-idrissi Flutter Application',
      //home: HomePage(),
      initialRoute: '/login',
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/pagemap': (context) => MapPage(),
      },
    );
  }
}
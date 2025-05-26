//import 'package:ecommerce/presentations/screens/home_screen.dart';
import 'package:ecommerce/firebase_options.dart';
import 'package:ecommerce/presentations/screens/home_screen/home_functions_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(24, 59, 78, 1),
        ),
      ),
      home: HomeFunctionsScreen(),
    );
  }
}

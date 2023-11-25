import 'package:flutter/material.dart';
import 'choice_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color(0xFF994CD3),
        ),
        scaffoldBackgroundColor: Color(0xFFD6C9EE),
      ),
      home: Choice(),
      debugShowCheckedModeBanner: false,
    );
  }
}
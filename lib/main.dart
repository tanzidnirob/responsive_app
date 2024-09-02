import 'package:flutter/material.dart';
import 'package:responsive_app/screens/home_screen.dart';

void main(){
  runApp(RsApp());
}

class RsApp extends StatelessWidget {
  const RsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

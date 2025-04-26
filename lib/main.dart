import 'package:flutter/material.dart';
import 'package:test_2/ui_utils/custom_map_icons.dart';

import 'features/home/screens/home_screen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CustomMapIcons().loadIcons();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: const HomeScreen()
    );
  }
}

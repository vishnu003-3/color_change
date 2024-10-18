import 'package:color_change/controller/home_screen_controller.dart';
import 'package:color_change/controller/second_screen_controller.dart';
import 'package:color_change/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => SecondScreenController(),
        )
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

import 'package:custom_loder/loaders/loader_10.dart';
import 'package:custom_loder/loaders/loader_11.dart';
import 'package:custom_loder/loaders/loader_12.dart';
import 'package:custom_loder/loaders/loader_13.dart';
import 'package:custom_loder/loaders/loader_14.dart';
import 'package:custom_loder/loaders/loader_15.dart';
import 'package:custom_loder/loaders/loader_5.dart';
import 'package:custom_loder/loaders/loader_4.dart';
import 'package:custom_loder/loaders/loader_6.dart';
import 'package:custom_loder/loaders/loader_3.dart';
import 'package:custom_loder/loaders/loader_1.dart';
import 'package:custom_loder/loaders/loader_8.dart';
import 'package:custom_loder/loaders/loader_9.dart';
import 'package:custom_loder/menu_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const MenuScreen(),
    );
  }
}



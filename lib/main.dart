// ignore_for_file: prefer_const_constructors, library_prefixes

import 'package:flutter/material.dart';
import 'package:hostpitalmarketing/route/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}

// ignore_for_file: prefer_const_constructors, library_prefixes

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hostpitalmarketing/components/button.dart';
import 'package:hostpitalmarketing/colors.dart' as baseColor;
import 'package:quickalert/quickalert.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(baseColor.primary);
    return MaterialApp(
      title: 'Hostpital Marketing',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Hostpital Marketing'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: baseColor.primary,
          title: Text(
            widget.title,
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Button(
                  name: "Primary",
                  onPress: () {
                    QuickAlert.show(
                        context: context,
                        type: QuickAlertType.success,
                        title: 'Oops',
                        text: 'You just broke protocol');
                  },
                ),
                Button(
                    name: "Warning",
                    backgroundColor: Colors.yellow.shade700,
                    paddingTop: 20,
                    onPress: () {
                      GoRouter.of(context).push('/');
                    }),
                Button(
                  name: "Success",
                  backgroundColor: Colors.green.shade700,
                ),
                Button(
                  name: "Info",
                  backgroundColor: Colors.blue.shade700,
                )
              ],
            ),
          ),
        ));
  }
}

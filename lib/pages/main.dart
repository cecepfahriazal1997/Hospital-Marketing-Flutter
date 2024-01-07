// ignore_for_file: prefer_const_constructors, library_prefixes, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:go_router/go_router.dart';
import 'package:hostpitalmarketing/colors.dart' as baseColor;
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:hostpitalmarketing/fragments/account.dart';
import 'package:hostpitalmarketing/fragments/home.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  int _currentIndex = 0;

  void checkLoginState() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    bool isLoggedIn = prefs.getBool("isLoggedIn") ?? false;

    if (isLoggedIn) {
      context.go('/home');
    } else {
      context.go('/');
    }
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      checkLoginState();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      extendBody: true,
      backgroundColor: Colors.grey[200],
      body: <Widget>[Home(), Account()][_currentIndex],
      bottomNavigationBar: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          topLeft: Radius.circular(24),
        )),
        child: NavigationBar(
            elevation: 1,
            backgroundColor: Colors.white,
            indicatorColor: baseColor.primarySoft,
            onDestinationSelected: (int selected) {
              setState(() {
                _currentIndex = selected;
              });
            },
            selectedIndex: _currentIndex,
            height: 70,
            destinations: const [
              NavigationDestination(
                  icon: Icon(Iconsax.home),
                  selectedIcon: Icon(
                    Iconsax.home,
                    color: Colors.white,
                  ),
                  label: "Home"),
              NavigationDestination(
                  icon: Icon(Iconsax.user),
                  selectedIcon: Icon(
                    Iconsax.user,
                    color: Colors.white,
                  ),
                  label: "Akun")
            ]),
      ),
    );
  }
}

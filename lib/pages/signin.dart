import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hostpitalmarketing/components/input.dart';
import 'package:hostpitalmarketing/components/label.dart';
import 'package:hostpitalmarketing/components/button.dart';
// ignore: library_prefixes
import 'package:hostpitalmarketing/colors.dart' as baseColor;
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(baseColor.primary);
    return Scaffold(
        appBar: null,
        body: SingleChildScrollView(
          child: Stack(children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Label(
                      title: 'Selamat Datang kembali! Masuk ke akun Anda.',
                      marginTop: 48,
                      marginBottom: 48,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    const Label(
                      title: 'Username',
                      marginTop: 8,
                      marginBottom: 8,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    TextFieldInput(
                        controller: TextEditingController(),
                        name: "Masukan username",
                        errorMessage: "Username harus diisi",
                        withLabelText: false,
                        withIcon: true,
                        prefixIcon: Icons.person_rounded,
                        inputType: TextInputType.text),
                    const Label(
                      title: 'Password',
                      marginTop: 8,
                      marginBottom: 8,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    TextFieldInput(
                        controller: TextEditingController(),
                        name: "Masukan Password",
                        errorMessage: "Password harus diisi",
                        withLabelText: false,
                        withIcon: true,
                        prefixIcon: Icons.lock,
                        obscureText: true,
                        inputType: TextInputType.visiblePassword),
                    Button(
                      name: "Login",
                      paddingLeft: 0,
                      onPress: () {
                        // GoRouter.of(context).push('/home');
                        GoRouter.of(context).go('/home');
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Column(children: [
                        Row(children: <Widget>[
                          Expanded(
                            child: Container(
                                margin: const EdgeInsets.only(right: 20.0),
                                child: const Divider(
                                  color: baseColor.smoothGrey,
                                  height: 1,
                                )),
                          ),
                          const Label(
                            title: "Atau masuk dengan",
                            fontSize: 12,
                            fontColor: baseColor.grey,
                          ),
                          Expanded(
                            child: Container(
                                margin: const EdgeInsets.only(left: 20.0),
                                child: const Divider(
                                  color: baseColor.smoothGrey,
                                  height: 1,
                                )),
                          ),
                        ]),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                icon: Image.asset(
                                  'assets/images/google.png',
                                  height: 42,
                                  width: 42,
                                ),
                                iconSize: 42,
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Image.asset(
                                  'assets/images/apple.png',
                                  height: 42,
                                  width: 42,
                                ),
                                iconSize: 42,
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Image.asset(
                                  'assets/images/facebook.png',
                                  height: 42,
                                  width: 42,
                                ),
                                iconSize: 42,
                                onPressed: () {},
                              )
                            ],
                          ),
                        )
                      ]),
                    )
                  ],
                )),
          ]),
        ));
  }
}

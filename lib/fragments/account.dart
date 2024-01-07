import 'package:flutter/material.dart';
import 'package:hostpitalmarketing/components/label.dart';
import 'package:hostpitalmarketing/components/button.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:go_router/go_router.dart';
import 'package:hostpitalmarketing/colors.dart' as baseColor;

// ignore: must_be_immutable
class Account extends StatelessWidget {
  const Account({super.key});

  void logout(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setBool('isLoggedIn', false);

    // ignore: use_build_context_synchronously
    GoRouter.of(context).go('/signin');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          color: Colors.grey[200],
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue[200],
                child: Image.asset(
                  'assets/images/doctor.png',
                  fit: BoxFit.cover,
                ),
              ),
              const Label(
                title: "Dr. dr. H. Boy Subiros Sabarguna, MARS",
                marginTop: 32,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              const Label(
                title: "Doctor",
                marginTop: 8,
                fontSize: 14,
              ),
              const SizedBox(
                height: 42,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Card(
                      color: Colors.white,
                      child: ListTile(
                        horizontalTitleGap: 20,
                        onTap: () => {},
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue[100],
                          child: const Icon(
                            Iconsax.user,
                            color: Colors.blue,
                          ),
                        ),
                        title: const Label(
                          title: "Akun",
                          fontWeight: FontWeight.bold,
                        ),
                        subtitle: const Label(
                          title: "Ubah Data Akun",
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      child: ListTile(
                        horizontalTitleGap: 20,
                        onTap: () => {},
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue[100],
                          child: const Icon(
                            Iconsax.messages,
                            color: Colors.blue,
                          ),
                        ),
                        title: const Label(
                          title: "Komunikasi dan Bantuan",
                          fontWeight: FontWeight.bold,
                        ),
                        subtitle: const Label(
                          title: "Tanya, Temukan Jawabanmu",
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      child: ListTile(
                        horizontalTitleGap: 20,
                        onTap: () => {},
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue[100],
                          child: const Icon(
                            Iconsax.document_text,
                            color: Colors.blue,
                          ),
                        ),
                        title: const Label(
                          title: "Term of Service",
                          fontWeight: FontWeight.bold,
                        ),
                        subtitle: const Label(
                          title: "Ketentuan Penggunaan Platform",
                        ),
                      ),
                    ),
                    Button(
                      name: "Logout",
                      backgroundColor: baseColor.smoothGrey,
                      color: Colors.black,
                      marginLeft: 0,
                      marginTop: 30,
                      onPress: () async {
                        logout(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

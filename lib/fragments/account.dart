import 'package:flutter/material.dart';
import 'package:hostpitalmarketing/components/label.dart';

// ignore: must_be_immutable
class Account extends StatelessWidget {
  const Account({super.key});

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
                fontSize: 16,
                fontWeight: FontWeight.bold,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hostpitalmarketing/components/label.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({super.key});

  List listMenu = [
    "Master Data",
    "Masukan",
    "Proses",
    "Keluaran",
    "Keputusan",
    "Hasil"
  ];

  List lisImage = [
    "assets/images/masterdata.png",
    "assets/images/input.png",
    "assets/images/process.png",
    "assets/images/output.png",
    "assets/images/decision.png",
    "assets/images/result.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.grey[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 30),
            Card(
                elevation: 2,
                child: Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [
                              Color(0xE2DEF9DE),
                              Color(0xF8BD8D99),
                            ],
                            begin: FractionalOffset(0.0, 0.0),
                            end: FractionalOffset(1.0, 0.0),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Label(
                                title:
                                    'Assalamu\'alaikum,\nDr.dr.H. Boy Subiros Sabarguna, MARS',
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                              ),
                              Label(
                                title:
                                    'Selamat datang di Sistem Informasi Pemasaran Rumah Sakit Berbasis Rekam Medis',
                                marginTop: 10,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            'assets/images/banner.png',
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    ))),
            const SizedBox(
              height: 50,
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1,
                  crossAxisSpacing: 8),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white,
                  child: InkWell(
                    onTap: () => {},
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(children: [
                        Expanded(
                          child: Image.asset(
                            lisImage[index],
                          ),
                        ),
                        Label(
                          title: listMenu[index],
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          marginTop: 8,
                        )
                      ]),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class RegistView extends StatefulWidget {
  const RegistView({super.key});

  @override
  State<RegistView> createState() => _RegistViewState();
}

class _RegistViewState extends State<RegistView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
            children: [
              Container(
                width: 400,
                height: 56,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 20, 72, 21),
                ),
                child: const Column(
                  children:[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                      child: Text(
                        "Daftar Jadi Mitra",
                        style: TextStyle(
                            fontFamily: "Urbanist Fist",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 247, 249, 247)),
                      ),
                    ),
                  ],
              )
            ),
            const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Informasi Mitra",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: "Urbanist Fist",
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 4, 4, 4)),
            ),
          ),
            ]
    )
      )
    );
  }
} 
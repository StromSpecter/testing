import 'package:flutter/material.dart';
import 'package:testing/views/login.dart';
import 'package:testing/views/regist.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => WelcomeViewState();
}

class WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 55),
            child: Image.asset("asset/image/Welcome1.png"),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Text(
              "Nikmati Berbelanja Produk Pertanian Terlengkap",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Urbanist Fist",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 16, 82, 19)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Cari Aneka Produk dengan Harga Terjangkau serta Kontrol semua Transaksimu dengan Mudah",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Urbanist Fist",
                  fontSize: 14,
                  color: Colors.green),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 150, 16, 0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => const RegistView()));
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 13.5),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(4)),
                child: const Column(
                  children: [
                    Text(
                      "Buat Akun",
                      style: TextStyle(
                        fontFamily:
                            "Urbanist Fist", // Corrected font family name
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => const LoginView()));
              },
              child: const Column(
                children: [
                  // Ensure the asset path is correct
                  Text(
                    "Masuk",
                    style: TextStyle(
                      fontFamily: "Urbanist Fist", // Corrected font family name
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

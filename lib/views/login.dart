import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isHide = true;

  TextEditingController phoneController = TextEditingController(); 
  TextEditingController passwordController = TextEditingController();
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 90),
            child: Column(
              children: [
                Image.asset("asset/image/AgriAku Logo.png"),
                const Padding(
                  padding: EdgeInsets.only(top:20),
                  child: Text("Selamat Datang di AgriAku", style: TextStyle(fontFamily: "Urbanist Fist", 
                  fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 16, 82, 19))),
                ),
                const Padding(
                  padding: EdgeInsets.only(top:3, bottom: 32),
                  child: Text("Masuk menggunakan Nomor Ponsel", style: TextStyle(fontFamily: "Urbanist Fist", 
                  fontSize: 14, 
                  color: Color.fromARGB(255, 3, 151, 11))
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    "Nomor Ponsel",
                    style: TextStyle(fontFamily: "Urbanist Fist", fontSize: 14),
                  ),
                ),
                TextFormField(
                  onChanged: (v){
                    setState(() {
                    });
                  },
                  controller: phoneController,
                  style: 
                  const TextStyle(
                      color:Colors.black, fontSize:14,
                      fontFamily: "Urbanist Fist"),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 13.5, horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide:
                      const BorderSide(width: 0, style: BorderStyle.none),
                    ),
                    hintText: "08123456789",
                    hintStyle: const TextStyle(
                      color:Color.fromARGB(255, 158, 151, 151), fontSize:14,
                      fontFamily: "Urbanist Fist"),
                      filled: true,
                      fillColor: Colors.grey[200],
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(color: Colors.green, width: 2.0),
                      ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(
                    "Password",
                    style: TextStyle(fontFamily: "Urbanist Fist", fontSize: 14),
                  ),
                ),
                TextFormField(
                  onChanged: (v){
                    setState(() {
                    });
                  },
                  controller: passwordController,
                  obscureText: isHide,
                  style: const TextStyle(
                      color:Colors.black, fontSize:14,
                      fontFamily: "Urbanist Fist"),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(onPressed: () {
                      isHide = !isHide;
                      setState(() {});
                    },
                     icon: Icon(
                      isHide ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                     color: Color.fromARGB(255, 199, 193, 193),)),
                    contentPadding: const EdgeInsets.symmetric(vertical: 13.5, horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide:
                      const BorderSide(width: 0, style: BorderStyle.none),
                    ),
                    hintText: "Password",
                    hintStyle: const TextStyle(
                      color:Color.fromARGB(255, 158, 151, 151), fontSize:14,
                      fontFamily: "Urbanist Fist"),
                      filled: true,
                      fillColor: Colors.grey[200],
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(color: Colors.green, width: 2.0),
                      ),
                  ),
                ),
                Padding(
            padding: const EdgeInsets.only(top: 32),
            child: GestureDetector(
              onTap: () {
                if (phoneController.text != "" && 
                passwordController.text != "") {
                  print("pindah ke halaman dashboard");
                } else {
                  print("masukkan nomor ponsel dan password");
                }
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 13.5),
                decoration: BoxDecoration(
                    color: phoneController.text != "" && 
                    passwordController.text != "" 
                    ? Color.fromARGB(255, 16, 79, 18)
                     : const Color.fromARGB(255, 16, 82, 19).withOpacity(0.28),
                    borderRadius: BorderRadius.circular(4)),
                child: const Column(
                  children: [
                    // Ensure the asset path is correct
                    Text(
                      "Masuk",
                      style: TextStyle(
                        fontFamily:
                            "Urbanist Fist", // Corrected font family name
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 32),
            child: Row(children: [
              Expanded(child: Divider(color: Color.fromARGB(255, 110, 108, 108))),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "atau",
                  style: TextStyle(
                   fontSize: 14, 
                   color: Color.fromARGB(255, 110, 108, 108))),
              ),
              Expanded(child: Divider(color: Color.fromARGB(255, 110, 108, 108))),
            ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 13.5),
              decoration: BoxDecoration(
                border: Border.all(color:Colors.grey),
                  color: const Color.fromARGB(255, 247, 249, 247),
                  borderRadius: BorderRadius.circular(4)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.asset("asset/image/google.png", width: 24, height: 24),
                  ),
                  const Column(
                    children: [
                      Text(
                        "Masuk dengan Google",
                        style: TextStyle(
                          fontFamily:
                              "Urbanist Fist", // Corrected font family name
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 20),
          child: 
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Belum punya akun?",
                style: TextStyle(fontFamily: "Urbanist Fist"),
              ),
              Text(
                "Daftar Sekarang",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Urbanist Fist",
                    color: Color.fromARGB(255, 16, 82, 19)),
              ),
            ],
          ),
        )
      ],
    ));
  }
}

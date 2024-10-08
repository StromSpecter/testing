import 'package:flutter/material.dart';
import 'package:testing/views/welcome.dart';

List onboardingData = [
  {
    "image": "asset/image/Onboarding1.png",
    "title": "AgriAku",
    "desc": "Cari Aneka Produk dengan Harga Terbaik.",
  },
  {
    "image": "asset/image/Onboarding2.png",
    "title": "AgriAku",
    "desc": "Cek Stock Kapan Saja Dimana Saja.",
  },
  {
    "image": "asset/image/Onboarding3.png",
    "title": "AgriAku",
    "desc": "Cek Ratusan Transaksi dengan Mudah.",
  }
];

class OnboardingViews extends StatefulWidget {
  const OnboardingViews({super.key});

  @override
  State<OnboardingViews> createState() => _OnboardingViewsState();
}

class _OnboardingViewsState extends State<OnboardingViews> {
  final PageController pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: pageController,
                onPageChanged: (v) {
                  print(v.toString());
                  setState(() {
                    currentPage = v;
                  });
                },
                itemCount: onboardingData.length,
                itemBuilder: (_, i) {
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(onboardingData[i]["image"]), // Ensure the asset path is correct
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            (onboardingData[i]["title"]),
                            style: const TextStyle(
                                fontFamily:
                                    "Urbanist Fist", // Corrected font family name
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 13, 84, 8)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
                          child: Text(
                            onboardingData[i]["desc"],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontFamily:
                                    "Urbanist Fist", // Corrected font family name
                                fontSize: 14,
                                color: Colors.green),
                          ),
                        ),
                      ]);
                }),
          ),

          // Second Container with Image and Text
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Wrap(
                  spacing: 10,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                      decoration: BoxDecoration(
                          color: currentPage == 0 ? Colors.black : Colors.grey,
                          borderRadius: BorderRadius.circular(1000)),
                      width: currentPage == 0 ? 20 : 8,
                      height: 8,
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                      decoration: BoxDecoration(
                          color: currentPage == 1 ? Colors.black : Colors.grey,
                          borderRadius: BorderRadius.circular(1000)),
                      width: currentPage == 1 ? 20 : 8,
                      height: 8,
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                      decoration: BoxDecoration(
                          color: currentPage == 2 ? Colors.black : Colors.grey,
                          borderRadius: BorderRadius.circular(1000)),
                      width: currentPage == 2 ? 20 : 8,
                      height: 8,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GestureDetector(
                  onTap: () {
                    if (currentPage == 2) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const WelcomeView()));
                    } else {
                      pageController.animateToPage(currentPage + 1,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeInOut);
                    }
                    print("lanjutkan");
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 13.5),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(4)),
                    child: Column(
                      children: [
                        // Ensure the asset path is correct
                        Text(
                          currentPage == 2 ? "Mulai Sekarang" : "Lanjutkan",
                          style: const TextStyle(
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
              currentPage == 2
                  ? const SizedBox(
                      height: 50,
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: GestureDetector(
                        onTap: () {
                          pageController.animateToPage(2,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeInOut);
                          print("lewati");
                        },
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 13.5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4)),
                          child: const Column(
                            children: [
                              // Ensure the asset path is correct
                              Text(
                                "Lewati",
                                style: TextStyle(
                                  fontFamily:
                                      "Urbanist Fist", // Corrected font family name
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}

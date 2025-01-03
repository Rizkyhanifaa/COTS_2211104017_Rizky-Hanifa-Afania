import 'package:cots_rizky_hanifa_afania/main.dart';
import 'package:cots_rizky_hanifa_afania/modules/onboarding/onboarding2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class Onboarding1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                // Gambar Status Bar dengan ukuran dinamis
                Container(
                  width: screenWidth,
                  height: 15, // Fixed height for the status bar
                  child: Image.asset(
                    'images/artboard1.png', // Ganti dengan path gambar status bar
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),

                // Logo Gojek dan Language
                Container(
                  width: screenWidth,
                  height: screenHeight * 0.2, // Tinggi proporsional
                  child: Stack(
                    children: [
                      Positioned(
                        top: 57,
                        left: 15,
                        child: Image.asset(
                          'images/logo_gojek.png',
                          width: 85,
                          height: 20,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(Icons.error, color: Colors.red);
                          },
                        ),
                      ),
                      Positioned(
                        top: 54,
                        right: 15,
                        child: Image.asset(
                          'images/language.png',
                          width: 26,
                          height: 26,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(Icons.error, color: Colors.red);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                // Konten utama
                Column(
                  children: [
                    Image.asset(
                      'images/onboarding1.png',
                      height: screenHeight * 0.3,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.image_not_supported,
                            size: 100, color: Colors.grey);
                      },
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Selamat datang di gojek!',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Aplikasi yang bikin hidupmu lebih nyaman. Siap \nbantuin semua kebutuhanmu, kapanpun\ndi manapun.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: index == 0 ? Colors.green : Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // Tombol dan Ketentuan
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Get.to(() =>
                              Onboarding2()); // Navigasi ke halaman Onboarding2
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF006C02),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minimumSize: const Size(double.infinity, 48),
                        ),
                        child: const Text(
                          'Masuk',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      OutlinedButton(
                        onPressed: () {
                          // Handle "Daftar" action
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          side: const BorderSide(color: Color(0xFF006C02)),
                          minimumSize: const Size(double.infinity, 48),
                        ),
                        child: const Text(
                          'Belum ada akun?, Daftar dulu',
                          style: TextStyle(
                            color: Color(0xFF006C02),
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(
                                255, 102, 100, 100), // Warna default (abu-abu)
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text:
                                    'Dengan masuk atau mendaftar, kamu menyetujui\n'),
                            TextSpan(
                              text: 'Ketentuan layanan',
                              style: TextStyle(
                                  color: Colors
                                      .blue), // Warna biru untuk "Ketentuan layanan"
                            ),
                            TextSpan(text: ' dan '),
                            TextSpan(
                              text: 'Kebijakan privasi.',
                              style: TextStyle(
                                  color: Colors
                                      .blue), // Warna biru untuk "Kebijakan privasi"
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

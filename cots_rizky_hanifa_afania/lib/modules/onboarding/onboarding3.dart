import 'package:cots_rizky_hanifa_afania/modules/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboarding3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'images/logo_gojek.png',
                  width: 85,
                  height: 20,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.error, color: Colors.red);
                  },
                ),
                const Icon(Icons.language, color: Colors.red),
              ],
            ),
            const Spacer(),
            Image.asset(
              'images/onboarding2.png', // Ganti dengan gambar lain jika ada
              height: 200,
            ),
            const SizedBox(height: 20),
            Text(
              'Pesan Makan & Belanja',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Lagi ngidam sesuatu? Gojek beliin ga pakai lama',
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
                    color: index == 2 ? Colors.green : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Bagian bawah: Tombol Masuk, Daftar, dan Ketentuan
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
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
    );
  }
}

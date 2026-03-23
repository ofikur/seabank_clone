import 'package:flutter/material.dart';
import 'home_page.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/seabank_logo.png',
                    width: 68,
                    height: 68,
                  ),
                  const Text(
                    'Seabank',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 94, 0),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              bottom: 60,
              left: 16,
              right: 16,
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  'Berizin dan diawasi oleh Otoritas Jasa Keuangan (OJK) dan Bank\nIndonesia (BI) serta merupakan bank peserta penjaminan\nLembaga Pejaminan Simpanan (LPS)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.5,
                    height: 1.3,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SeaBank Clone',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: const Color(0xFFF8F9FA),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: const [
            SizedBox(height: 300),
            Center(
              child: Text(
                "Kerangka Halaman Utama",
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: _buildBottomNavigationBar(),

      floatingActionButton: SizedBox(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      height: 85,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, -2),
          ),
        ],
      ),
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: _buildNavItem(Icons.home, 'Beranda', true)),
          Expanded(
            child: _buildNavItem(Icons.swap_horiz, 'Bayar/Transfer', false),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Color(0xFFE95E1A),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.qr_code_scanner,
                    color: Colors.white,
                    size: 26,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'QRIS',
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
                SizedBox(height: 4),
              ],
            ),
          ),
          Expanded(
            child: _buildNavItem(
              Icons.monetization_on_outlined,
              'Deposito',
              false,
            ),
          ),
          Expanded(child: _buildNavItem(Icons.person_outline, 'Saya', false)),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool isActive) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(
          icon,
          color: isActive ? const Color(0xFFE95E1A) : Colors.grey,
          size: 28,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 10,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            color: isActive ? const Color(0xFFE95E1A) : Colors.grey,
          ),
        ),
        const SizedBox(height: 4),
      ],
    );
  }
}

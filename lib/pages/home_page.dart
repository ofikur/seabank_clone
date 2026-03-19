import 'package:flutter/material.dart';
import '../components/custom_button_nav.dart';
import '../components/profile_header.dart';
import '../components/balance_card.dart';
import '../components/main_menu.dart';
import '../components/info_banner.dart';
import '../components/promo_banner.dart';
import '../components/flash_deals.dart';
import '../components/connected_ewallet.dart';
import '../components/transaction_history.dart';

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
            ProfileHeader(),
            SizedBox(height: 2),
            BalanceCard(),
            MainMenu(),
            InfoBanner(),
            PromoBanner(),
            FlashDeals(),
            ConnectedEwallet(),
            TransactionHistory(),
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

      bottomNavigationBar: const CustomButtonNav(),

      floatingActionButton: SizedBox(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

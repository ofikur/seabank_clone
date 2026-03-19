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
import '../components/recent_tranfers.dart';

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
        child: Column(
          children: [
            const ProfileHeader(),
            const SizedBox(height: 2),

            Expanded(
              child: ListView(
                children: const [
                  BalanceCard(),
                  MainMenu(),
                  InfoBanner(),
                  PromoBanner(),
                  FlashDeals(),
                  SizedBox(height: 7.0),
                  PromoBanner(height: 120),
                  ConnectedEwallet(),
                  TransactionHistory(),
                  SizedBox(height: 7.0),
                  PromoBanner(height: 120),
                  RecentTranfers(),
                  SizedBox(height: 14),
                ],
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

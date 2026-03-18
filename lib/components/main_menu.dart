import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Container(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: _buildMenuItem(Icons.currency_exchange, 'Tranfer'),
                ),
                Expanded(
                  child: _buildMenuItem(
                    Icons.phone_android,
                    'Top Up &\nTagihan',
                    badge: 'Promo',
                  ),
                ),
                Expanded(
                  child: _buildMenuItem(
                    Icons.account_balance_wallet_outlined,
                    'Top Up\nE-Wallet',
                  ),
                ),
                Expanded(
                  child: _buildMenuItem(
                    Icons.person_add_alt_1_outlined,
                    'Undang\nTeman',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: _buildMenuItem(
                    Icons.monetization_on_outlined,
                    'Deposito',
                  ),
                ),
                Expanded(
                  child: _buildMenuItem(
                    Icons.file_download_outlined,
                    'Tarik Tunai',
                    badge: 'Gratis',
                  ),
                ),
                Expanded(
                  child: _buildMenuItem(
                    Icons.file_upload_outlined,
                    'Setor Tunai',
                    badge: 'Gratis',
                  ),
                ),
                Expanded(
                  child: _buildMenuItem(Icons.more_horiz, 'Lihat Semua'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, {String? badge}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Icon(icon, color: const Color(0xFFFF5E00), size: 32),

            if (badge != null)
              Positioned(
                top: -6,
                right: -16,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF4E6),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    badge,
                    style: const TextStyle(
                      color: Color(0xFFFF5E00),
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12, color: Colors.black87),
        ),
      ],
    );
  }
}

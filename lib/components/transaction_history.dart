import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 14.0,
                bottom: 9.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Riwayat Transaksi',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey.shade500,
                    size: 20,
                  ),
                ],
              ),
            ),

            Divider(height: 1, thickness: 1, color: Colors.grey.shade100),

            _buildTransactionItem(
              icon: Icons.storefront,
              title: 'PT Tokopedia',
              type: 'Pembayaran',
              date: '27 Jan 2026, 18:56',
              amount: '-Rp 800.000',
              isIncome: false,
            ),
            Divider(height: 1, thickness: 1, color: Colors.grey.shade100),

            _buildTransactionItem(
              icon: Icons.person,
              title: 'Dompet Anak Bangsa',
              type: 'Tranfer',
              date: '27 Jan 2026, 18:55',
              amount: '+Rp 9.644.000',
              isIncome: true,
            ),
            Divider(height: 1, thickness: 1, color: Colors.grey.shade100),

            _buildTransactionItem(
              icon: Icons.payment,
              title: 'Spaylater',
              type: 'Pembayaran',
              date: '26 Jan 2026, 15:48',
              amount: '-Rp 1.370.100',
              isIncome: false,
            ),
            Divider(height: 1, thickness: 1, color: Colors.grey.shade100),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Transaksi Lainnya',
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                  ),
                  const SizedBox(width: 4),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey.shade400,
                    size: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionItem({
    required IconData icon,
    required String title,
    required String type,
    required String date,
    required String amount,
    required bool isIncome,
  }) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 33,
            height: 33,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 94, 0),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.white, size: 22),
          ),
          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 19, color: Colors.black87),
                ),
                Text(
                  type,
                  style: TextStyle(fontSize: 17, color: Colors.grey.shade800),
                ),
                Text(
                  date,
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
                ),
              ],
            ),
          ),

          Text(
            amount,
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: isIncome
                  ? const Color.fromARGB(255, 0, 165, 80)
                  : Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

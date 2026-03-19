import 'package:flutter/material.dart';

class RecentTranfers extends StatelessWidget {
  const RecentTranfers({super.key});

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
                    'Tranfer Terakhir',
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

            _buildTranferItem(
              icon: Icons.account_balance_wallet,
              iconColor: const Color.fromARGB(255, 0, 174, 214),
              title: 'Gojek Mxxx Oxxxxxxxxxxx',
              subtitle: 'Gopay 0822****2211',
            ),
            Divider(height: 1, thickness: 1, color: Colors.grey.shade100),
            
            _buildTranferItem(
              icon: Icons.person,
              iconColor: Colors.grey.shade300,
              title: 'Cahxx Axx Ramxxxxx',
              subtitle: 'Seabank 9012****8753',
              isSeaBank: true,
            ),
            Divider(height: 1, thickness: 1, color: Colors.grey.shade100),

            _buildTranferItem(
              iconText: 'S',
              iconColor: const Color.fromARGB(255, 255, 94, 0),
              title: 'Shopeepay Moh Ofixxxxxxxxx',
              subtitle: 'Shopeepay 0822****2211',
            ),

            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  Widget _buildTranferItem({
    IconData? icon,
    String? iconText,
    required Color iconColor,
    required String title,
    required String subtitle,
    bool isSeaBank = false,
  }) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 33,
            height: 33,
            decoration: BoxDecoration(
              color: iconColor,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: icon != null
              ? Icon(icon, color: Colors.white, size: 22)
              : Text(
                iconText ?? '',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ),
          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 19, color: Colors.black87),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    if (isSeaBank) ...[
                      Container(
                        width: 15,
                        height: 15,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 94, 0),
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'S',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(width: 6),
                    ],
                    Expanded(
                      child: Text(
                        subtitle,
                        style: TextStyle(fontSize: 17, color: Colors.grey.shade600),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

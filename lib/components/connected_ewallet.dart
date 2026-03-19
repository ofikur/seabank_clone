import 'package:flutter/material.dart';

class ConnectedEwallet extends StatelessWidget {
  const ConnectedEwallet({super.key});

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
            const Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 14.0, bottom: 9.0),
              child: Text(
                'E-Wallet Terhubung',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),

            Divider(height: 1, thickness: 1, color: Colors.grey.shade100),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                child: Row(
                  children: [
                    _buildWalletItem(
                      iconText: 'S',
                      iconColor: const Color.fromARGB(255, 255, 94, 0),
                      title: 'M*************...',
                      subtitle: 'Rp 19.480.000',
                      isAction: false,
                    ),
                    const SizedBox(width: 10),
                    _buildWalletItem(
                      iconText: 'OVO',
                      iconColor: const Color.fromARGB(255, 76, 52, 148),
                      title: 'OVO',
                      subtitle: 'Hubungkan',
                      isAction: true,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWalletItem({
    required String iconText,
    required Color iconColor,
    required String title,
    required subtitle,
    required bool isAction,
  }) {
    return Container(
      width: 157,
      padding: const EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 248, 249, 250),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Container(
            width: 33,
            height: 33,
            decoration: BoxDecoration(color: iconColor, shape: BoxShape.circle),
            alignment: Alignment.center,
            child: Text(
              iconText,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    if (!isAction) ...[
                      const SizedBox(width: 4),
                      const Icon(
                        Icons.chevron_right,
                        size: 14,
                        color: Colors.grey,
                      ),
                    ],
                  ],
                ),
                Row(
                  children: [
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: isAction ? FontWeight.w600 : FontWeight.bold,
                        color: isAction
                            ? const Color.fromARGB(255, 255, 94, 0)
                            : Colors.black87,
                      ),
                    ),
                    if (isAction) ...[
                      const SizedBox(width: 2),
                      const Icon(
                        Icons.chevron_right,
                        size: 16,
                        color: Color.fromARGB(255, 255, 94, 0),
                      )
                    ]
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

import 'package:flutter/material.dart';

class FlashDeals extends StatelessWidget {
  const FlashDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        clipBehavior: Clip.hardEdge,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color.fromARGB(255, 255, 232, 212), Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.timer_outlined,
                  color: Color.fromARGB(255, 255, 94, 0),
                  size: 21,
                ),
                const SizedBox(width: 3),
                const Text(
                  'Deposito Flash Deals',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 17,
                  ),
                ),
                const Spacer(),
                const Text(
                  'Dimulai dalam',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(width: 8),
                _buildTimeBox('07', 'JAM'),
                const SizedBox(width: 4),
                _buildTimeBox('16', 'MNT'),
                const SizedBox(width: 4),
                _buildTimeBox('52', 'DTK'),
                const SizedBox(width: 4),
                const Icon(
                  Icons.keyboard_arrow_up,
                  color: Colors.grey,
                  size: 20,
                ),
              ],
            ),

            const SizedBox(height: 12),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Jangan Lewatkan 🔥',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 8),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 97, 97, 97),
                              height: 1.4,
                            ),
                            children: [
                              TextSpan(
                                text: 'Penawaran terbatas dimulai pada ',
                              ),
                              TextSpan(
                                text: 'Kamis 5:00 PM',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 94, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 12),

                  _buildDealCard('12 bulan', '7.5', '6% p.a.', '100 kuota'),
                  const SizedBox(width: 12),
                  _buildDealCard(
                    '6 bulan',
                    '6,25',
                    '5,25% p.a.',
                    '1,000 kuota',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimeBox(String time, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            time,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 2),
        Text(label, style: const TextStyle(fontSize: 10, color: Colors.grey)),
      ],
    );
  }

  Widget _buildDealCard(
    String tenor,
    String rate,
    String oldRate,
    String quota,
  ) {
    return Container(
      width: 140,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tenor,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 2),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                rate,
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 94, 0),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 3.0),
                child: Text(
                  '% p.a.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 94, 0),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Text(
            oldRate,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
              decoration: TextDecoration.lineThrough,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            quota,
            style: const TextStyle(
              color: Color.fromARGB(255, 255, 94, 0),
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(255, 255, 94, 0)),
              borderRadius: BorderRadius.circular(4),
            ),
            alignment: Alignment.center,
            child: const Text(
              'Ingatkan Saya',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 94, 0),
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

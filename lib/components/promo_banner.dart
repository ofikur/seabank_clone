import 'package:flutter/material.dart';

class PromoBanner extends StatelessWidget {
  final double height;

  const PromoBanner({
    super.key,
    this.height = 80,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          height: height,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 94, 0),
          ),
          child: const Center(
            child: Text(
              'BANNER PROMO',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

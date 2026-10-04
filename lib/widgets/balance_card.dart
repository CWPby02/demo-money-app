import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(22),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),

        color: Colors.blue,

        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            offset: const Offset(0, 6),

            color: Colors.black.withOpacity(0.15),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          const Text(
            'Available Balance',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 15,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            '₹25,000.00',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 18),

          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,

            children: [

              const Text(
                'Demo Account',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),

              Icon(
                Icons.account_balance_wallet,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

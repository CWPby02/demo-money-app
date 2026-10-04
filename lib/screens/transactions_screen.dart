import 'package:flutter/material.dart';

import '../widgets/transaction_tile.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transactions'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),

        children: const [
          TransactionTile(
            name: 'Rahul',
            amount: '₹500',
            type: 'Payment',
          ),

          TransactionTile(
            name: 'Amit',
            amount: '₹250',
            type: 'Received',
          ),

          TransactionTile(
            name: 'Piyush',
            amount: '₹1,000',
            type: 'Payment',
          ),
        ],
      ),
    );
  }
}

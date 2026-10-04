import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final String name;
  final String amount;
  final String type;

  const TransactionTile({
    super.key,
    required this.name,
    required this.amount,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    final bool received = type == 'Received';

    return Container(
      margin: const EdgeInsets.only(bottom: 10),

      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),

        tileColor: Colors.grey.shade100,

        leading: CircleAvatar(
          child: Icon(
            received
                ? Icons.arrow_downward
                : Icons.arrow_upward,
          ),
        ),

        title: Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        subtitle: Text(type),

        trailing: Text(
          received ? '+$amount' : '-$amount',

          style: TextStyle(
            fontWeight: FontWeight.bold,

            color: received
                ? Colors.green
                : Colors.red,
          ),
        ),
      ),
    );
  }
}

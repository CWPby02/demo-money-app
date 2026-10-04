import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const ActionButton({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,

      borderRadius: BorderRadius.circular(18),

      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 10,
        ),

        decoration: BoxDecoration(
          color: Colors.grey.shade100,

          borderRadius: BorderRadius.circular(18),

          border: Border.all(
            color: Colors.grey.shade300,
          ),
        ),

        child: Column(
          children: [

            Icon(
              icon,
              size: 28,
              color: Colors.blue,
            ),

            const SizedBox(height: 8),

            Text(
              title,
              textAlign: TextAlign.center,

              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

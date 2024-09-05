import 'package:flutter/material.dart';

class SendMoneyButton extends StatelessWidget {
  const SendMoneyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      elevation: 4,
      onPressed: () {},
      icon: const Icon(
        Icons.add_circle_outline,
        color: Colors.white,
      ),
      label: const Text(
        'SEND MONEY',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.green.withOpacity(0.7),
    );
  }
}

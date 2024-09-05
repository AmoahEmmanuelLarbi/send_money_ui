import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: TransactionCard(),
          ),
        ),
      ),
    );
  }
}

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Row: Time
          const Text(
            '14:45PM',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 12),
          // Middle Section: Icon, Transaction Details, and Status Indicator
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left side: Icon
              CircleAvatar(
                backgroundColor: Colors.yellow,
                radius: 20,
                child:
                    Image.asset('assets/mtn_logo.png', width: 24, height: 24),
              ),
              const SizedBox(width: 12),
              // Middle side: Details
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Name of the sender with a manual line break
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Emmanuel Rockson\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          /*
                          TextSpan(
                            text: 'Kwabena Uncle Ebo',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          */
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    // Phone number
                    Text(
                      '024 123 4567',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              // Right side: Status and Amount
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 14,
                        ),
                        SizedBox(width: 4),
                        Text(
                          'Successful',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'GHS 500',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 12),
          // Bottom Row: Note and Star Icon
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Aligning the person icon with CircleAvatar
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 10, // Match the size with the avatar size
                    child: Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: 16,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Personal',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    '•',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Cool your heart wai',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[700],
                size: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

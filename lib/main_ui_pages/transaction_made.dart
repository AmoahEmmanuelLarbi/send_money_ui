import 'package:flutter/material.dart';

class TransactionMade extends StatelessWidget {
  const TransactionMade(
      {super.key,
      required this.senderName,
      required this.senderPhoneNumber,
      required this.amount,
      required this.reference,
      required this.transactionStatus});
  final String senderName;
  final String senderPhoneNumber;
  final String amount;
  final String reference;
  final String transactionStatus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 14),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: Colors.grey.withOpacity(0.5),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // time of transaction
            const Text(
              '14:45PM',
              style: TextStyle(
                color: Colors.black54,
                fontFamily: 'Roboto',
              ),
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // circle avatar
                const CircleAvatar(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.sim_card),
                ),
                const SizedBox(width: 8),
                Expanded(
                  // transaction details column
                  child: Column(
                    children: [
                      // sender name and transaction status row (first row)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // sender name
                          SizedBox(
                            width: 150,
                            child: Text(
                              senderName,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'Roboto',
                                fontSize: 16,
                              ),
                            ),
                          ),

                          // transaction status container
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: transactionStatus.toLowerCase() ==
                                      'successful'
                                  ? Colors.greenAccent.withOpacity(0.3)
                                  : Colors.redAccent.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // transaction status icon
                                // icon
                                Icon(
                                  transactionStatus.toLowerCase() ==
                                          'successful'
                                      ? Icons.check_circle
                                      : Icons.cancel,
                                  size: 16,
                                  color: transactionStatus.toLowerCase() ==
                                          'successful'
                                      ? Colors.green[300]
                                      : Colors.red[300],
                                ),
                                const SizedBox(width: 2),
                                // text
                                Text(
                                  // transaction status text
                                  transactionStatus.toLowerCase() ==
                                          'successful'
                                      ? 'Successful'
                                      : 'Failed',
                                  style: transactionStatus.toLowerCase() ==
                                          'successful'
                                      ? TextStyle(
                                          fontSize: 10,
                                          color: Colors.green[300],
                                          fontWeight: FontWeight.bold,
                                        )
                                      : TextStyle(
                                          fontSize: 10,
                                          color: Colors.red[300],
                                          fontWeight: FontWeight.bold,
                                        ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 2),

                      // sender phone number and amount (second row)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          //sender phone number
                          Text(
                            senderPhoneNumber,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),

                          // amount of money received
                          Text(
                            'GHS $amount',
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),

            const SizedBox(height: 6),
            // bottom row

            Divider(
              thickness: 1,
              color: Colors.grey[400],
              indent: 4,
              endIndent: 4,
            ),

            const SizedBox(height: 6),
            // transaction reference
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.blueGrey.withOpacity(0.2),
                        foregroundColor: Colors.blue[400],
                        child: const Icon(
                          Icons.person,
                          size: 16,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text('Personal'),
                      const SizedBox(width: 6),
                      const Text(
                        '•',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 6),

                      // transaction reference
                      Text(
                        reference,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),

                  // star transaction
                  const Icon(
                    Icons.star_rounded,
                    color: Colors.yellow,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

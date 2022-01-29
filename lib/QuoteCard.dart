import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  QuoteCard({ required this.quote });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              quote.quote,
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber
              ),
            ),
            Text(
              quote.author,
              style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green
              ),
            )
          ],
        ),
      ),
    );
  }
}
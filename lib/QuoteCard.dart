import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;

  QuoteCard({ required this.quote, required this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              flex: 6,
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
            Expanded(
              flex: 1,
              child: IconButton(
                onPressed: (){ delete(); },
                icon: const Icon(
                    Icons.delete_forever
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
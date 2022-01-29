import 'package:flutter/material.dart';
import 'quote.dart';
import 'QuoteCard.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));



class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Quote> quotes = [
    Quote(quote: 'All is well that ends well', author: 'cyber'),
    Quote(quote: 'Great powers , great responsibility', author: 'wizard'),
    Quote(quote: 'Happiness is key to achieving inner peace', author: 'io'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quotes of the day'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.blueGrey,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: quotes.map((e) => QuoteCard(quote: e,)).toList(),
      )
    );
  }
}



import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<String> quotes = [
    'You better lose yourself in music the moment you own it never let it go',
    'The way to get started is to quit talking and begin doing.',
    'Spread love everywhere you go. Let no one ever come to you without leaving happier',
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.lime,
      ),
      body: Column(
        children: quotes.map((quote) => Text(quote),
        ).toList(),
      ),
    );
  }
}
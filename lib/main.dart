import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(const MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<dynamic> quotes = [
    Quote(author: 'Osca Wilde', text: 'Be yourself; everyone else is already taken'),
    Quote(author: 'Eminem', text: 'You better lose yourself in music the moment you own it never let it go'),
    Quote(author: 'Mother Teresa', text: 'Spread love everywhere you go. Let no one ever come to you without leaving happier'),
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
        children: quotes.map((quote) => Text('${quote.text} - ${quote.author}'),).toList(),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import './quote.dart';
import './quotelist.dart';

void main() => runApp(QuoteApp());

class QuoteApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QuoteAppState();
}

class _QuoteAppState extends State<QuoteApp> {
  // List<String> quotes = [
  //   'Be yourself, cuz everyone else is already taken',
  //   'I have nothing to declare except my genius',
  //   'The truth is rarely pure and never simple',
  // ];
  List<Quote> quotes = [
    Quote(
        texte: 'Be yourself, cuz everyone else is already taken',
        author: 'Oscar Wilde'),
    Quote(
        texte: 'I have nothing to declare except my genius',
        author: 'Oscar Wilde'),
    Quote(
        texte: 'The truth is rarely pure and never simple',
        author: 'Oscar Wilde')
  ];

  // Widget quoteList(quote) {
  //   return Card(
  //     margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
  //     elevation: 1.5,
  //     child: Padding(
  //       padding: EdgeInsets.all(12),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.stretch,
  //         children: <Widget>[
  //           Text(
  //             quote.texte,
  //             textAlign: TextAlign.center,
  //             style: TextStyle(
  //               color: Colors.grey[600],
  //               fontSize: 16,
  //             ),
  //           ),
  //           SizedBox(
  //             height: 10,
  //           ),
  //           Text(
  //             quote.author,
  //             textAlign: TextAlign.center,
  //             style: TextStyle(color: Colors.grey[800], fontSize: 14),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuoteApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quotes'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          children: quotes
              .map((quote) => QuoteList(
                  quote: quote.texte,
                  author: quote.author,
                  handler: () => setState(() {
                        quotes.remove(quote);
                      })))
              .toList(),
        ),
      ),
    );
  }
}

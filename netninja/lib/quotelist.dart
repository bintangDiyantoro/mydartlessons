import 'package:flutter/material.dart';

class QuoteList extends StatelessWidget {
  final String quote, author;
  final Function handler;
  QuoteList({this.quote, this.author, this.handler});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      elevation: 1.5,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  author,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[800], fontSize: 14),
                ),
                IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.grey[700],
                  ),
                  onPressed: handler,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetHandler;
  Result(this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Quiz Over'),
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: const Text(
        "HELP",
        style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.teal),
      ),
    );
  }
}

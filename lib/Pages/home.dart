import 'package:code_freak_2/components/body.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: const Text("Dashboard"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.settings_outlined,
                color: Colors.white,
              ),
              onPressed: () {})
        ]);
  }
}

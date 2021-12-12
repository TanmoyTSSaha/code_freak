import 'package:code_freak_2/Pages/first_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constant.dart';

void main() {
  runApp(const CodeFreak());
}

class CodeFreak extends StatelessWidget {
  const CodeFreak({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Code Freak',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: kPrimaryColor),
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      navigatorKey: Get.key,
      home: const FirstPage(),
    );
  }
}

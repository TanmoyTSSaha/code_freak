import 'package:code_freak_2/Pages/help.dart';
import 'package:code_freak_2/Pages/login.dart';
import 'package:code_freak_2/Pages/registration.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/WelcomeUI.png"),
                      alignment: Alignment.topCenter,
                      fit: BoxFit.fitWidth)),
              child: Column(
                children: [
                  SizedBox(
                    height: 400,
                    width: 400,
                    child: Center(
                      child: Text("CODE FREAK",
                          style: GoogleFonts.getFont('Inconsolata',
                              textStyle: const TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ),
                  ),
                  const SizedBox(
                    height: 85,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ),
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 60,
                      alignment: Alignment.center,
                      child: const Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color(0xFF023059),
                            Color(0xFF011C40),
                          ]),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Registration(),
                        ),
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 60,
                      alignment: Alignment.center,
                      child: const Text(
                        "REGISTER",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color(0xFF023059),
                            Color(0xFF011C40),
                          ]),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Help(),
                        ),
                      );
                    },
                    child: const Text(
                      "NEED ANY HELP?",
                      style: TextStyle(
                          color: Color(0xFF023059),
                          fontWeight: FontWeight.bold,
                          fontSize: 17.5),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:code_freak_2/Pages/registration.dart';
import 'package:code_freak_2/Pages/home.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  validate () {
    if (_formKey.currentState!.validate()) {
      return Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home(),
                          ),
                        );
    }
    else {
      debugPrint("Not Validate");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Login.png"),
                        alignment: Alignment.topCenter,
                        fit: BoxFit.fitWidth)),
                child: Column(
                  children: [
                    const SizedBox(height: 5),
                    const SizedBox(
                      height: 250,
                      width: 400,
                      child: Center(
                        child: Text("HEY, WELCOME BACK!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const SizedBox(
                      height: 125,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "EMAIL ADDRESS",
                            hintText: "Enter Email ID",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3.0, color: Color(0xFF023059)),
                                borderRadius: BorderRadius.circular(50)),
                            prefixIcon: const Icon(Icons.person_outline)),
                        keyboardType: TextInputType.emailAddress,
                        validator: (email) => !EmailValidator.validate(email!)
                            ? "Enter valid Email"
                            : null,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "PASSWORD",
                              hintText: "Enter Password",
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 3.0, color: Color(0xFF023059)),
                                  borderRadius: BorderRadius.circular(50)),
                              prefixIcon: const Icon(Icons.lock_outline)),
                          validator: (value) {
                            if (value!.length < 6) {
                              return "Password length must be atlast of 6 characters";
                            } else if (value.isEmpty) {
                              return "Password cannot be empty";
                            }
                            return null;
                          }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: validate,
                      child: Container(
                        height: 60,
                        width: 200,
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
                      height: 40,
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
                      child: const Text(
                        "Don't have an account\nREGISTER HERE",
                        textAlign: TextAlign.center,
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
            ),
          )
        ],
      ),
    );
  }
}

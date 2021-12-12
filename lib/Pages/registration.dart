import 'package:code_freak_2/Pages/login.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _formKey = GlobalKey<FormState>();
  var _password = "";

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
                        image: AssetImage("assets/images/Registration.png"),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 150,
                      child: Center(
                        child: Text("LET'S GET STARTED!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const SizedBox(
                      height: 140,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Column(
                        children: [
                          TextFormField(
                              decoration: InputDecoration(
                                  labelText: "FULL NAME",
                                  hintText: "Enter Your Name",
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3.0, color: Color(0xFF023059)),
                                      borderRadius: BorderRadius.circular(50)),
                                  prefixIcon: const Icon(Icons.person_outline)),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Name can't be empty";
                                } else if (value.length < 3) {
                                  return "Name must be greater than 3 characters";
                                }
                                return null;
                              }),
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "EMAIL ADDRESS",
                                hintText: "Enter Email Address",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 3.0, color: Color(0xFF023059)),
                                    borderRadius: BorderRadius.circular(50)),
                                prefixIcon: const Icon(Icons.email_outlined)),
                            keyboardType: TextInputType.emailAddress,
                            validator: (email) =>
                                !EmailValidator.validate(email!)
                                    ? "Enter a valid Email"
                                    : null,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "PHONE NUMBER",
                                hintText: "Enter Phone Number",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 3.0, color: Color(0xFF023059)),
                                    borderRadius: BorderRadius.circular(50)),
                                prefixIcon: const Icon(Icons.email_outlined)),
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Phone Number cannot be empty";
                              } else if (value.length < 10) {
                                return "Please enter a valide Phone Number";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "PASSWORD",
                                hintText: "Enter Password",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 3.0, color: Color(0xFF023059)),
                                    borderRadius: BorderRadius.circular(50)),
                                prefixIcon: const Icon(Icons.person_outline)),
                            validator: (String? value) {
                              if (value != null && value.length < 6) {
                                return "Password must be atleast of 6 characters";
                              } else if (value!.isEmpty) {
                                return "Password cannot be empty";
                              }
                              return null;
                            },
                            onChanged: (value) => _password = value,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "CONFIRM PASSWORD",
                                hintText: "Re-Enter Your Password",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 3.0, color: Color(0xFF023059)),
                                    borderRadius: BorderRadius.circular(50)),
                                prefixIcon: const Icon(Icons.person_outline)),
                            validator: (value) {
                              if (value != _password) {
                                return "Password didn't matched!";
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Login(),
                            ),
                          );
                        }
                      },
                      child: Container(
                        height: 60,
                        width: 200,
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
                      height: 40,
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
                      child: const Text(
                        "Already have an account\nLOGIN HERE",
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

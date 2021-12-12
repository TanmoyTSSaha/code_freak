import 'package:code_freak_2/components/search_box.dart';
import 'package:code_freak_2/constant.dart';
import 'package:code_freak_2/content_pages/arrays.dart';
import 'package:code_freak_2/content_pages/basic.dart';
import 'package:code_freak_2/content_pages/basic_input_output.dart';
import 'package:code_freak_2/content_pages/operators.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: <Widget>[
            SearchBox(
              onChanged: (value) {},
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            Expanded(
              child: GridView.count(
                childAspectRatio: 1,
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Basic(),
                        ),
                      );
                    },
                    child: const CatagoryCard(
                      title: "Basic",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BasicInputOutPut(),
                        ),
                      );
                    },
                    child: const CatagoryCard(
                      title: "Basic Input/Output",
                      // press: () {},
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Operators(),
                        ),
                      );
                    },
                    child: const CatagoryCard(
                      title: "Operators",
                      // press: () {},
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Arrays(),
                        ),
                      );
                    },
                    child: const CatagoryCard(
                      title: "Arrays",
                      // press: () {},
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Basic(),
                        ),
                      );
                    },
                    child: const CatagoryCard(
                      title: "String",
                      // press: () {},
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BasicInputOutPut(),
                        ),
                      );
                    },
                    child: const CatagoryCard(
                      title: "Functions",
                      // press: () {},
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Operators(),
                        ),
                      );
                    },
                    child: const CatagoryCard(
                      title: "Pointers & References",
                      // press: () {},
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Arrays(),
                        ),
                      );
                    },
                    child: const CatagoryCard(
                      title: "Object Oriented Programming",
                      // press: () {},
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Basic(),
                        ),
                      );
                    },
                    child: const CatagoryCard(
                      title: "Constructors & Destructors",
                      // press: () {},
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BasicInputOutPut(),
                        ),
                      );
                    },
                    child: const CatagoryCard(
                      title: "Exception Handling",
                      // press: () {},
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Operators(),
                        ),
                      );
                    },
                    child: const CatagoryCard(
                      title: "File Handling",
                      // press: () {},
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Arrays(),
                        ),
                      );
                    },
                    child: const CatagoryCard(
                      title: "Standard Template Library (STL)",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CatagoryCard extends StatelessWidget {
  final String title;
  const CatagoryCard({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Material(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

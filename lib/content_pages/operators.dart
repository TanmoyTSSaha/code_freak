import 'package:code_freak_2/constant.dart';
import 'package:code_freak_2/quiz/operator_quiz.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Operators extends StatelessWidget {
  const Operators({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: const OperatorsContent(),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        "Basic",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OperatorQuiz(),
                ),
              );
            },
            child: const Text(
              "QUIZ",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ))
      ],
    );
  }
}

class OperatorsContent extends StatelessWidget {
  const OperatorsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        const Text(
          "C++ Programming Language",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const Image(
            image: NetworkImage(
                "https://www.geeksforgeeks.org/wp-content/uploads/titleShadow-768x256.png")),
        const SizedBox(height: 5),
        const Text(
          "C++ is a general purpose programming language and widely used now a days for competitive programming. It has imperative, object-oriented and generic programming features. C++ runs on lots of platform like Windows, Linux, Unix, Mac etc.",
          style: TextStyle(fontSize: 15),
        ),
        const SizedBox(height: 10),
        const Text(
          "Introduction to C++ Programming Language",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        const Image(
            image: NetworkImage(
                "https://media.geeksforgeeks.org/wp-content/cdn-uploads/20190430122723/cpp-program-compilation3-1024x375.png")),
        const SizedBox(height: 5),
        RichText(
          text: const TextSpan(
              text:
                  "C++ is a middle-level language rendering it the advantage of programming low-level (drivers, kernels) and even higher-level applications (games, GUI, desktop apps etc.). The basic syntax and code structure of both C and C++ are the same. Some of the features & key-points to note about the programming language are as follows:\n",
              style: TextStyle(color: Colors.black, fontSize: 15),
              children: [
                TextSpan(
                    text: "\n\t1. Simple: ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        "It is a simple language in the sense that programs can be broken down into logical units and parts, has a rich library support and a variety of data-types.\n"),
                TextSpan(
                    text: "\t2. Machine Independent but Platform Dependent: ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        "A C++ executable is not platform-independent (compiled programs on Linux won’t run on Windows), however they are machine independent.\n"),
                TextSpan(
                    text: "\t3. Mid-level language: ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        "It is a mid-level language as we can do both systems-programming (drivers, kernels, networking etc.) and build large-scale user applications (Media Players, Photoshop, Game Engines etc.)\n"),
                TextSpan(
                    text: "\t4. Rich library support: ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        "Has a rich library support (Both standard ~ built-in data structures, algorithms etc.) as well 3rd party libraries (e.g. Boost libraries) for fast and rapid development.\n"),
                TextSpan(
                    text: "\t5. Speed of execution: ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        "C++ programs excel in execution speed. Since, it is a compiled language, and also hugely procedural. Newer languages have extra in-built default features such as garbage-collection, dynamic typing etc. which slow the execution of the program overall. Since there is no additional processing overhead like this in C++, it is blazing fast.\n"),
                TextSpan(
                    text: "\t6. Pointer and direct Memory-Access: ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        "C++ provides pointer support which aids users to directly manipulate storage address. This helps in doing low-level programming (where one might need to have explicit control on the storage of variables).\n"),
                TextSpan(
                    text: "\t7. Object-Oriented: ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        "One of the strongest points of the language which sets it apart from C. Object-Oriented support helps C++ to make maintainable and extensible programs. i.e. Large-scale applications can be built. Procedural code becomes difficult to maintain as code-size grows.\n"),
                TextSpan(
                    text: "\t8. Compiled Language: ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        "C++ is a compiled language, contributing to its speed.\n"),
                TextSpan(
                    text: "\nApplications of C++:\n",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                TextSpan(
                  text:
                      "C++ finds varied usage in applications such as:\n\n\t1. Operating Systems & Systems Programming. e.g. Linux-based OS (Ubuntu etc.)\n\t2. Browsers (Chrome & Firefox)\n\t3. Graphics & Game engines (Photoshop, Blender, Unreal-Engine)\n\t4. Database Engines (MySQL, MongoDB, Redis etc.)\n\t5. Cloud/Distributed Systems",
                ),
              ]),
        ),
        const SizedBox(height: 10),
        const Text(
          "C++ Programming Basics",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        const Image(
            image: NetworkImage(
                "https://www.geeksforgeeks.org/wp-content/uploads/titleShadow-768x256.png")),
        const SizedBox(height: 5),
        RichText(
            text: const TextSpan(
          text:
              "C++ is a general-purpose programming language and widely used nowadays for competitive programming. It has imperative, object-oriented and generic programming features. C++ runs on lots of platform like Windows, Linux, Unix, Mac, etc.\n\n",
          style: TextStyle(fontSize: 15, color: Colors.black),
          children: [
            TextSpan(
                text:
                    "However to become proficient in any programming language, one Firstly needs to understand the basics of that language.\n\n",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text:
                  "Therefore, below are the basics of C++ in the format in which it will help you the most to get the headstart:\n\n",
            ),
            TextSpan(
                text: "\t1. Basic Syntax and First Program in C++: ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text:
                  "Learning C++ programming can be simplified into writing your program in a text editor and saving it with correct extension(.CPP, .C, .CP) and compiling your program using a compiler or online IDE. The “Hello World” program is the first step towards learning any programming language and also one of the simplest programs you will learn.\n",
            ),
            TextSpan(
                text: "\t2. Basic I/O in C++: ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text:
                  "C++ comes with libraries which provides us with many ways for performing input and output. In C++ input and output is performed in the form of a sequence of bytes or more commonly known as streams. The two keywords cout and cin are used very often for taking inputs and printing outputs. These two are the most basic methods of taking input and output in C++.\n",
            ),
            TextSpan(
                text: "\t3. Comments in C++: ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text:
                  "A well-documented program is a good practice as a programmer. It makes a program more readable and error finding become easier. One important part of good documentation is Comments. In computer programming, a comment is a programmer-readable explanation or annotation in the source code of a computer program. These are statements that are not executed by the compiler and interpreter.\n",
            ),
            TextSpan(
                text: "\t4. Data Types and Modifiers in C++: ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text:
                  "All variables use data-type during declaration to restrict the type of data to be stored. Therefore, we can say that data types are used to tell the variables the type of data it can store. Whenever a variable is defined in C++, the compiler allocates some memory for that variable based on the data-type with which it is declared. Every data type requires a different amount of memory.\n",
            ),
            TextSpan(
                text: "\t5. Uninitialized variable in C++: ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text:
                  "Uninitialized variable in C++: “One of the things that has kept C++ viable is the zero-overhead rule: What you don’t use, you don’t pay for.” -Stroustrup. The overhead of initializing a stack variable is costly as it hampers the speed of execution, therefore these variables can contain indeterminate values. It is considered a best practice to initialize a primitive data type variable before using it in code.\n",
            ),
            TextSpan(
                text: "\t6. Undefined Behaviour in C++: ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text:
                  "If a user starts learning in C/C++ environment and is unclear with the concept of undefined behaviour then that can bring plenty of problems in the future like while debugging someone else code might be actually difficult in tracing the root to the undefined error.\n",
            ),
            TextSpan(
                text: "\t7. Variables and Types in C++: ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text:
                  "A variable is a name given to a memory location. It is the basic unit of storage in a program. The value stored in a variable can be changed during program execution. A variable is only a name given to a memory location, all the operations done on the variable effects that memory location. In C++, all the variables must be declared before use.\n",
            ),
            TextSpan(
                text: "\t8. Variable Scope in C++: ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text:
                  "In general, scope is defined as the extent up to which something can be worked with. In programming also the scope of a variable is defined as the extent of the program code within which the variable can we accessed or declared or worked with. There are mainly two types of variable scopes, Local and Global Variables.\n",
            ),
            TextSpan(
                text: "\t9. Constants and Literals in C++: ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text:
                  "As the name suggests the name constants is given to such variables or values in C++ programming language which cannot be modified once they are defined. They are fixed values in a program. There can be any types of constants like integer, float, octal, hexadecimal, character constants, etc. Every constant has some range. The integers that are too big to fit into an int will be taken as long. Now there are various ranges that differ from unsigned to signed bits. Under the signed bit, the range of an int varies from -128 to +127 and under the unsigned bit, int varies from 0 to 255. Literals are kind of constants and both the terms are used interchangeably in C++.\n",
            ),
            TextSpan(
                text: "\t10. Types of Literals in C++: ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text:
                  "In this article we will analyse the various kind of literals that C++ provides. The values assigned to each constant variables are referred to as the literals. Generally, both terms, constants and literals are used interchangeably. For eg, “const int = 5;“, is a constant expression and the value 5 is referred to as constant integer literal.\n",
            ),
            TextSpan(
                text: "\t11. Access Modifiers in C++: ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text:
                  "Access modifiers are used to implement an important feature of Object-Oriented Programming known as Data Hiding. Access modifiers or Access Specifiers in a class are used to set the accessibility of the class members. That is, it sets some restrictions on the class members not to get directly accessed by the outside functions.\n",
            ),
            TextSpan(
                text: "\t12. Storage Classes in C++: ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text:
                  "Storage Classes are used to describe the features of a variable/function. These features basically include the scope, visibility, and life-time which help us to trace the existence of a particular variable during the runtime of a program.\n",
            ),
            TextSpan(
                text: "\t13. Operators in C++: ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text:
                  "Operators are the foundation of any programming language. Thus the functionality of C/C++ programming language is incomplete without the use of operators. We can define operators as symbols that help us to perform specific mathematical and logical computations on operands. In other words, we can say that an operator operates the operands.\n",
            ),
            TextSpan(
                text: "\t14. Loops in C++: ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text:
                  "Loops in programming comes into use when we need to repeatedly execute a block of statements. For example: Suppose we want to print “Hello World” 10 times. This can be done in two ways, Iterative method and by using Loops.\n",
            ),
            TextSpan(
                text: "\t15. Decision Making in C++: ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text:
                  "There comes situations in real life when we need to make some decisions and based on these decisions, we decide what should we do next. Similar situations arise in programming also where we need to make some decisions and based on these decisions we will execute the next block of code. Decision-making statements in programming languages decide the direction of flow of program execution.\n",
            ),
            TextSpan(
                text: "\t16. Forward declarations in C++: ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text:
                  "It refers to the beforehand declaration of the syntax or signature of an identifier, variable, function, class, etc. prior to its usage (done later in the program). In C++, Forward declarations are usually used for Classes. In this, the class is pre-defined before its use so that it can be called and used by other classes that are defined before this.\n",
            ),
            TextSpan(
                text: "\t17. Errors in C++: ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text:
                  "Error is an illegal operation performed by the user which results in abnormal working of the program. Programming errors often remain undetected until the program is compiled or executed. Some of the errors inhibit the program from getting compiled or executed. Thus errors should be removed before compiling and executing.",
            ),
          ],
        )),
        const SizedBox(height: 10),
        const Text(
          "C++ Data Types",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        const Image(
            image: NetworkImage(
                "https://media.geeksforgeeks.org/wp-content/cdn-uploads/20191113115600/DatatypesInC.png")),
        const SizedBox(height: 5),
        RichText(
            text: const TextSpan(
          text:
              "All variables use data-type during declaration to restrict the type of data to be stored. Therefore, we can say that data types are used to tell the variables the type of data it can store. Whenever a variable is defined in C++, the compiler allocates some memory for that variable based on the data-type with which it is declared. Every data type requires a different amount of memory.\n\n",
          style: TextStyle(fontSize: 15, color: Colors.black),
          children: [
            TextSpan(
                text:
                    "Data types in C++ is mainly divided into three types: \n\n",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
              text: "\t1. Primitive Data Types: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  "These data types are built-in or predefined data types and can be used directly by the user to declare variables. example: int, char , float, bool etc. Primitive data types available in C++ are:\n\t> Integer\n\t> Character\n\t> Boolean\n\t> Floating Point\n\t> Double Floating Point\n\t> Valueless or Void\n\t> Wide Character\n",
            ),
            TextSpan(
              text: "\t2. Derived Data Types: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  "The data-types that are derived from the primitive or built-in datatypes are referred to as Derived Data Types. These can be of four types namely:\n\t> Function\n\t> Array\n\t> Pointer\n\t> Reference\n",
            ),
            TextSpan(
              text: "\t3. Abstract or User-Defined Data Types: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  "These data types are defined by user itself. Like, defining a class in C++ or a structure. C++ provides the following user-defined datatypes:\n\t> Class\n\t> Structure\n\t> Union\n\t> Enumeration\n\t> Typedef defined DataType \n\n",
            ),
            TextSpan(
              text: "This article discusses ",
            ),
            TextSpan(
              text: "primitive data types ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "available in C++.\n\n",
            ),
            TextSpan(
              text: "\t1. Integer: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  "Keyword used for integer data types is int. Integers typically requires 4 bytes of memory space and ranges from -2147483648 to 2147483647. \n",
            ),
            TextSpan(
              text: "\t2. Character: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  "Character data type is used for storing characters. Keyword used for character data type is char. Characters typically requires 1 byte of memory space and ranges from -128 to 127 or 0 to 255.\n",
            ),
            TextSpan(
              text: "\t3. Boolean: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  "Boolean data type is used for storing boolean or logical values. A boolean variable can store either true or false. Keyword used for boolean data type is bool.\n",
            ),
            TextSpan(
              text: "\t4. Floating Point: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  "Floating Point data type is used for storing single precision floating point values or decimal values. Keyword used for floating point data type is float. Float variables typically requires 4 byte of memory space.\n",
            ),
            TextSpan(
              text: "\t5. Double Floating Point: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  "Double Floating Point data type is used for storing double precision floating point values or decimal values. Keyword used for double floating point data type is double. Double variables typically requires 8 byte of memory space.\n",
            ),
            TextSpan(
              text: "\t6. void: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  "oid means without any value. void datatype represents a valueless entity. Void data type is used for those function which does not returns a value.\n",
            ),
            TextSpan(
              text: "\t7. Wide Character: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  "Wide character data type is also a character data type but this data type has size greater than the normal 8-bit datatype. Represented by wchar_t. It is generally 2 or 4 bytes long.\n\n",
            ),
            TextSpan(
              text: "Datatype Modifiers\n\n",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            WidgetSpan(
              child: Image(
                  image: NetworkImage(
                      "https://media.geeksforgeeks.org/wp-content/cdn-uploads/20191113121347/ModifiersInC.png")),
            ),
            TextSpan(
              text:
                  "\n\nAs the name implies, datatype modifiers are used with the built-in data types to modify the length of data that a particular data type can hold. Data type modifiers available in C++ are: ",
            ),
            TextSpan(
              text: "\n\t> Signed\n\t> Unsigned\n\t> Short\n\t> Long\n",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  "\nBelow table summarizes the modified size and range of built-in datatypes when combined with the type modifiers:\n\n",
            ),
            WidgetSpan(
              child: Image(image: AssetImage("assets/images/Datatypes.png")),
            ),
            TextSpan(
              text: "\n\nNote: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  "Above values may vary from compiler to compiler. In the above example, we have considered GCC 32 bit.\nWe can display the size of all the data types by using the sizeof() operator and passing the keyword of the datatype as argument to this function as shown below: \n\n",
            ),
            TextSpan(
              text: "CPP\n\n",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            WidgetSpan(
              child: Image(image: AssetImage("assets/images/Program1.png")),
            ),
            TextSpan(
              text: "\n\nOutput\n\n",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            WidgetSpan(
              child: Image(
                  image: AssetImage("assets/images/Program_Solution1.png")),
            ),
          ],
        )),
        const SizedBox(height: 10),
        const Text(
          "Variables in C++",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        const Image(
            image: NetworkImage(
                "https://www.geeksforgeeks.org/wp-content/uploads/titleShadow-768x256.png")),
        const SizedBox(height: 5),
        RichText(
          text: TextSpan(
            text:
                "A variable is a name given to a memory location. It is the basic unit of storage in a program.",
            style: const TextStyle(fontSize: 15, color: Colors.black),
            children: [
              const TextSpan(
                text:
                    "\n\t> The value stored in a variable can be changed during program execution.\n\t> A variable is only a name given to a memory location, all the operations done on the variable effects that memory location.\n\t> In C++, all the variables must be declared before use.\n\n",
              ),
              const TextSpan(
                text: "How to declare variables?\n\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const TextSpan(
                text: "A typical variable declaration is of the form: \n\n",
              ),
              TextSpan(
                text:
                    "// Declaring a single variable\ntype variable_name;\n\n// Declaring multiple variables:\ntype variable1_name, variable2_name, variable3_name;\n\n",
                style: GoogleFonts.inconsolata(
                  textStyle: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ),
              const TextSpan(
                text:
                    "A variable name can consist of alphabets (both upper and lower case), numbers and the underscore ‘_’ character. However, the name must not start with a number.\n\n",
              ),
              const WidgetSpan(
                child: Image(
                    image: NetworkImage(
                        "https://media.geeksforgeeks.org/wp-content/uploads/20190708153106/Variables-in-C-1.jpg")),
              ),
              const TextSpan(
                text: "\n\nIn the above diagram,\n",
              ),
              const TextSpan(
                text: "datatype: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text: "Type of data that can be stored in this variable.\n",
              ),
              const TextSpan(
                text: "variable_name: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text: "Name given to the variable.\n",
              ),
              const TextSpan(
                text: "value: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text: "It is the initial value stored in the variable.\n",
              ),
              const TextSpan(
                text: "\nExamples: \n\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              TextSpan(
                text:
                    "// Declaring float variable\nfloat simpleInterest;\n\n// Declaring integer variable\nint time, speed; \n\n// Declaring character variable\nchar var;\n\n",
                style: GoogleFonts.inconsolata(
                  textStyle: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ),
              const TextSpan(
                text:
                    "Difference between variable declaration and definition\n",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text: "The variable declaration ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "refers to the part where a variable is first declared or introduced before its first use. A ",
              ),
              const TextSpan(
                text: "variable definition",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "is a part where the variable is assigned a memory location and a value. Most of the times, variable declaration and definition are done together See the following C++ program for better clarification:",
              ),
              const TextSpan(
                text: "\n\nCPP\n\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              TextSpan(
                children: [
                  TextSpan(
                    text: "#include <iostream>\n",
                    style: GoogleFonts.inconsolata(
                      textStyle: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextSpan(
                    text: "using namespace std;\n",
                    style: GoogleFonts.inconsolata(
                      textStyle: const TextStyle(
                          color: Colors.pink, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextSpan(
                    text: "int",
                    style: GoogleFonts.inconsolata(
                      textStyle: const TextStyle(
                          color: Colors.pink, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextSpan(
                    text: " main()",
                    style: GoogleFonts.inconsolata(
                      textStyle: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextSpan(
                    text:
                        "\n{\n    // declaration and definition\n    // of variable 'a123'",
                    style: GoogleFonts.inconsolata(
                      textStyle: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextSpan(
                    text: "\n    char a123 = 'a';",
                    style: GoogleFonts.inconsolata(
                      textStyle: const TextStyle(
                          color: Colors.teal, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextSpan(
                    text:
                        "\n\n    // This is also both declaration and \n       definition\n    // as 'b' is allocated memory and\n    // assigned some garbage value.",
                    style: GoogleFonts.inconsolata(
                      textStyle: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextSpan(
                    text: "\n    float b;",
                    style: GoogleFonts.inconsolata(
                      textStyle: const TextStyle(
                          color: Colors.teal, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextSpan(
                    text: "\n\n    // multiple declarations and definitions",
                    style: GoogleFonts.inconsolata(
                      textStyle: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextSpan(
                    text: "\n    int _c, _d45, e;",
                    style: GoogleFonts.inconsolata(
                      textStyle: const TextStyle(
                          color: Colors.teal, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextSpan(
                    text: "\n\n    // Let us print a variable",
                    style: GoogleFonts.inconsolata(
                      textStyle: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextSpan(
                    text: "\n    cout << a123 << endl;",
                    style: GoogleFonts.inconsolata(
                      textStyle: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextSpan(
                    text: "\n\n    return 0;",
                    style: GoogleFonts.inconsolata(
                      textStyle: const TextStyle(
                          color: Colors.pink, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextSpan(
                    text: "\n}",
                    style: GoogleFonts.inconsolata(
                      textStyle: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const TextSpan(
                text: "\n\nOutput",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "\n  a",
                style: GoogleFonts.inconsolata(
                  textStyle: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              const TextSpan(
                text: "\n\nTypes of variables\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const TextSpan(
                text:
                    "There are three types of variables based on the scope of variables in C++:\n\n  > Local Variables\n  > Instance Variables\n  > Static Variables",
              ),
              const WidgetSpan(
                child: Image(
                    image: NetworkImage(
                        "https://media.geeksforgeeks.org/wp-content/cdn-uploads/20191113121956/TypesofVariableInC.png")),
              ),
              const TextSpan(
                text:
                    "Let us now learn about each one of these variables in detail. ",
              ),
              const TextSpan(
                text: "\n\n1. Local Variables: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "A variable defined within a block or method or constructor is called local variable.\n  > These variable are created when the block in entered or the function is called and destroyed after exiting from the block or when the call returns from the function.\n  > The scope of these variables exists only within the block in which the variable is declared. i.e. we can access these variable only within that block.\n  > Initialisation of Local Variable is Mandatory.",
              ),
              const TextSpan(
                text: "\n2. Instance Variables: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "Instance variables are non-static variables and are declared in a class outside any method, constructor or block.\n  > As instance variables are declared in a class, these variables are created when an object of the class is created and destroyed when the object is destroyed.\n  > Unlike local variables, we may use access specifiers for instance variables. If we do not specify any access specifier then the default access specifier will be used.\n  > Initialisation of Instance Variable is not Mandatory.\n  > Instance Variable can be accessed only by creating objects.",
              ),
              const TextSpan(
                text: "\n3. Static Variables: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "Static variables are also known as Class variables.\n  > These variables are declared similarly as instance variables, the difference is that static variables are declared using the static keyword within a class outside any method constructor or block.\n  > Unlike instance variables, we can only have one copy of a static variable per class irrespective of how many objects we create.\n  > Static variables are created at the start of program execution and destroyed automatically when execution ends.\n  > Initialization of Static Variable is not Mandatory. Its default value is 0\n  > If we access the static variable like Instance variable (through an object), the compiler will show the warning message and it won’t halt the program. The compiler will replace the object name to class name automatically.\n  > If we access the static variable without the class name, Compiler will automatically append the class name.",
              ),
              const TextSpan(
                text: "\n\n Instance variable Vs Static variable\n\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const TextSpan(
                text:
                    "  > Each object will have its own copy of instance variable whereas We can only have one copy of a static variable per class irrespective of how many objects we create.\n  > Changes made in an instance variable using one object will not be reflected in other objects as each object has its own copy of instance variable. In case of static, changes will be reflected in other objects as static variables are common to all object of a class.\n  > We can access instance variables through object references and Static Variables can be accessed directly using class name.\n  > Syntax for static and instance variables:\n\n",
              ),
              TextSpan(
                text:
                    "class Example\n{\n    static int a; // static variable\n    int b;        // instance variable\n}",
                style: GoogleFonts.inconsolata(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "Loops in C and C++",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        const Image(
            image: NetworkImage(
                "https://www.geeksforgeeks.org/wp-content/uploads/titleShadow-768x256.png")),
        const SizedBox(height: 5),
        RichText(
          text: TextSpan(
            text:
                "Loops in programming come into use when we need to repeatedly execute a block of statements. For example: Suppose we want to print “Hello World” 10 times. This can be done in two ways as shown below:",
            style: const TextStyle(fontSize: 15, color: Colors.black),
            children: [
              const TextSpan(
                text: "\n\nIterative Method:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const TextSpan(
                text:
                    "\nAn iterative method to do this is to write the printf() statement 10 times.\n\n",
              ),
              TextSpan(
                style: GoogleFonts.inconsolata(
                    fontWeight: FontWeight.bold, color: Colors.black),
                children: const [
                  TextSpan(
                    text: "// C++ program to illustrate need of loops",
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextSpan(
                    text: "\n#include <iostream>\nusing",
                  ),
                  TextSpan(
                    text: " namespace ",
                    style: TextStyle(color: Colors.pink),
                  ),
                  TextSpan(
                    text: "std;\nint main()\n{\n    cout << ",
                  ),
                  TextSpan(
                    text: " \"Hello World\";",
                    style: TextStyle(color: Colors.orange),
                  ),
                  TextSpan(
                    text: "\n    cout << ",
                  ),
                  TextSpan(
                    text: " \"Hello World\";",
                    style: TextStyle(color: Colors.orange),
                  ),
                  TextSpan(
                    text: "\n    cout << ",
                  ),
                  TextSpan(
                    text: " \"Hello World\";",
                    style: TextStyle(color: Colors.orange),
                  ),
                  TextSpan(
                    text: "\n    cout << ",
                  ),
                  TextSpan(
                    text: " \"Hello World\";",
                    style: TextStyle(color: Colors.orange),
                  ),
                  TextSpan(
                    text: "\n    cout << ",
                  ),
                  TextSpan(
                    text: " \"Hello World\";",
                    style: TextStyle(color: Colors.orange),
                  ),
                  TextSpan(
                    text: "\n    cout << ",
                  ),
                  TextSpan(
                    text: " \"Hello World\";",
                    style: TextStyle(color: Colors.orange),
                  ),
                  TextSpan(
                    text: "\n    cout << ",
                  ),
                  TextSpan(
                    text: " \"Hello World\";",
                    style: TextStyle(color: Colors.orange),
                  ),
                  TextSpan(
                    text: "\n    cout << ",
                  ),
                  TextSpan(
                    text: " \"Hello World\";",
                    style: TextStyle(color: Colors.orange),
                  ),
                  TextSpan(
                    text: "\n    cout << ",
                  ),
                  TextSpan(
                    text: " \"Hello World\";",
                    style: TextStyle(color: Colors.orange),
                  ),
                  TextSpan(
                    text: "\n    cout << ",
                  ),
                  TextSpan(
                    text: " \"Hello World\";",
                    style: TextStyle(color: Colors.orange),
                  ),
                  TextSpan(
                    text: "\n    return",
                    style: TextStyle(color: Colors.pink),
                  ),
                  TextSpan(
                    text: " 0;\n}",
                  ),
                ],
              ),
              const TextSpan(
                text: "\n\nOutput\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    "  Hello World\n  Hello World\n  Hello World\n  Hello World\n  Hello World\n  Hello World\n  Hello World\n  Hello World\n  Hello World\n  Hello World",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text: "\n\nUsing Loops",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const TextSpan(
                text:
                    "\nIn Loop, the statement needs to be written only once and the loop will be executed 10 times as shown below.\nIn computer programming, a loop is a sequence of instructions that is repeated until a certain condition is reached.\n  > An operation is done, such as getting an item of data and changing it, and then some condition is checked such as whether a counter has reached a prescribed number.\n  > Counter not Reached: If the counter has not reached the desired number, the next instruction in the sequence returns to the first instruction in the sequence and repeat it.\n  > Counter reached: If the condition has been reached, the next instruction “falls through” to the next sequential instruction or branches outside the loop.",
              ),
              const TextSpan(
                text: "There are mainly two types of loops:\n",
              ),
              const TextSpan(
                text: "1. Entry Controlled loops: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "In this type of loops the test condition is tested before entering the loop body. For Loop and While Loop are entry controlled loops.\n",
              ),
              const TextSpan(
                text: "2. Exit Controlled Loops: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "In this type of loops the test condition is tested or evaluated at the end of loop body. Therefore, the loop body will execute atleast once, irrespective of whether the test condition is true or false. do – while loop is exit controlled loop.\n",
              ),
              const WidgetSpan(
                child: Image(
                    image: NetworkImage(
                        "https://media.geeksforgeeks.org/wp-content/cdn-uploads/20191128194516/Cpp-loops.png")),
              ),
              const TextSpan(
                text: "\n\nfor Loop\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "A for loop is a repetition control structure which allows us to write a loop that is executed a specific number of times. The loop enables us to perform n number of steps together in one line.\n",
              ),
              const TextSpan(
                text: "\n\nSyntax:\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    "for (initialization expr; test expr; update expr)\n{\n\n     // body of the loop\n     // statements we want to \n        execute\n}",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "\n\nIn for loop, a loop variable is used to control the loop. First initialize this loop variable to some value, then check whether this variable is less than or greater than counter value. If statement is true, then loop body is executed and loop variable gets updated . Steps are repeated till exit condition comes.\n",
              ),
              const TextSpan(
                text: "1. Initialization Expression: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "In this expression we have to initialize the loop counter to some value. for example: int i=1;\n",
              ),
              const TextSpan(
                text: "2. Test Expression: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "In this expression we have to test the condition. If the condition evaluates to true then we will execute the body of loop and go to update expression otherwise we will exit from the for loop. For example: i <= 10;\n",
              ),
              const TextSpan(
                text: "3. Update Expression: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "After executing loop body this expression increments/decrements the loop variable by some value. for example: i++;\n\nEquivalent flow diagram for loop :\n\n",
              ),
              const WidgetSpan(
                child: Image(
                    image: NetworkImage(
                        "https://media.geeksforgeeks.org/wp-content/uploads/loops.png")),
              ),
              const TextSpan(
                text: "\n\nExample\n\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              TextSpan(
                style: GoogleFonts.inconsolata(
                    fontWeight: FontWeight.bold, color: Colors.black),
                children: const [
                  TextSpan(
                    text: "// C program to illustrate For Loop",
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextSpan(
                    text: "\n#include <iostream>\nusing",
                  ),
                  TextSpan(
                    text: " namespace ",
                    style: TextStyle(color: Colors.pink),
                  ),
                  TextSpan(
                    text: "std;\nint main()\n{\n    int i=0;",
                  ),
                  TextSpan(
                    text: "\n    for",
                    style: TextStyle(color: Colors.pink),
                  ),
                  TextSpan(
                    text: " (i = 1; i <= 10; i++)",
                  ),
                  TextSpan(
                    text: "\n    {",
                  ),
                  TextSpan(
                    text: "\n        printf",
                    style: TextStyle(color: Colors.green),
                  ),
                  TextSpan(
                    text: "( \"Hello World\\n\");",
                    style: TextStyle(color: Colors.orange),
                  ),
                  TextSpan(
                    text: "\n    }",
                  ),
                  TextSpan(
                    text: "\n    return",
                    style: TextStyle(color: Colors.pink),
                  ),
                  TextSpan(
                    text: " 0;\n}",
                  ),
                ],
              ),
              const TextSpan(
                text: "\n\nOutput\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    "  Hello World\n  Hello World\n  Hello World\n  Hello World\n  Hello World\n  Hello World\n  Hello World\n  Hello World\n  Hello World\n  Hello World",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text: "\n\nWhile Loop\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "While studying for loop we have seen that the number of iterations is known beforehand, i.e. the number of times the loop body is needed to be executed is known to us. while loops are used in situations where we do not know the exact number of iterations of loop beforehand. The loop execution is terminated on the basis of test condition.\n",
              ),
              const TextSpan(
                text: "\n\nSyntax:\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "We have already stated that a loop is mainly consisted of three statements – initialization expression, test expression, update expression. The syntax of the three loops – For, while and do while mainly differs on the placement of these three statements.\n\n",
              ),
              TextSpan(
                text:
                    "initialization expression;\nwhile (test_expression)\n{\n   // statements\n\n   update_expression;\n}",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text: "\n\nFlow Diagram:\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const WidgetSpan(
                child: Image(
                    image: NetworkImage(
                        "https://media.geeksforgeeks.org/wp-content/uploads/php-while-loop.jpg")),
              ),
              const TextSpan(
                text: "\n\nExample: \n\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const WidgetSpan(
                child: Image(image: AssetImage("assets/images/WhileLoop.png")),
              ),
              const TextSpan(
                text: "\n\nOutput: \n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    "  Hello World\n  Hello World\n  Hello World\n  Hello World\n  Hello World",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text: "\n\nDo While Loop\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "In do while loops also the loop execution is terminated on the basis of test condition. The main difference between do while loop and while loop is in do while loop the condition is tested at the end of loop body, i.e do while loop is exit controlled whereas the other two loops are entry controlled loops.\n",
              ),
              const TextSpan(
                text: "\nNote: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "In do while loop the loop body will execute at least once irrespective of test condition.\n\n",
              ),
              const TextSpan(
                text: "\n\nSyntax:\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    "initialization expression;\ndo\n{\n   // statements\n    update_expression;\n} while (test_expression);",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text: "\n\nFlow Diagram:\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const WidgetSpan(
                child: Image(
                    image: NetworkImage(
                        "https://media.geeksforgeeks.org/wp-content/uploads/php-do-while.jpg")),
              ),
              const TextSpan(
                text: "\n\nExample: \n\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const WidgetSpan(
                child:
                    Image(image: AssetImage("assets/images/DoWhileLoop.png")),
              ),
              const TextSpan(
                text: "\n\nOutput: \n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "  Hello World\n",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "\nIn the above program the test condition (i<1) evaluates to false. But still as the loop is exit – controlled the loop body will execute once.\n",
              ),
              const TextSpan(
                text: "\nWhat about an Infinite Loop?\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "An infinite loop (sometimes called an endless loop ) is a piece of coding that lacks a functional exit so that it repeats indefinitely. An infinite loop occurs when a condition always evaluates to true. Usually, this is an error.\n",
              ),
              const WidgetSpan(
                child:
                    Image(image: AssetImage("assets/images/InfinityLoop.png")),
              ),
              const TextSpan(
                text: "\n\nOutput: \n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    "This loop will run forever.\nThis loop will run forever.\n................... \n",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "Decision Making in C / C++ (if , if..else, Nested if, if-else-if )",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        const Image(
            image: NetworkImage(
                "https://www.geeksforgeeks.org/wp-content/uploads/titleShadow-768x256.png")),
        const SizedBox(height: 5),
        RichText(
          text: TextSpan(
            text:
                "There come situations in real life when we need to make some decisions and based on these decisions, we decide what should we do next. Similar situations arise in programming also where we need to make some decisions and based on these decisions we will execute the next block of code. For example, in C if x occurs then execute y else execute z. There can also be multiple conditions like in C if x occurs then execute p, else if condition y occurs execute q, else execute r. This condition of C else-if is one of the many ways of importing multiple conditions.\n",
            style: const TextStyle(fontSize: 15, color: Colors.black),
            children: [
              const WidgetSpan(
                child: Image(
                    image: NetworkImage(
                        "https://media.geeksforgeeks.org/wp-content/cdn-uploads/20191202113149/CPP-Decision-Making.png")),
              ),
              const TextSpan(
                text:
                    "\nDecision-making statements in programming languages decide the direction of the flow of program execution. Decision-making statements available in C or C++ are:\n",
              ),
              const TextSpan(
                text:
                    "\n    1. if statement\n    2. if..else statements\n    3. nested if statements\n    4. if-else-if ladder\n    5. switch statements\n    6. Jump Statements: \n       1. break\n        2. continue\n        3. goto\n        4. return\n\n",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text: "if statement in C/C++\n\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const TextSpan(
                text:
                    "if statement is the most simple decision-making statement. It is used to decide whether a certain statement or block of statements will be executed or not i.e if a certain condition is true then a block of statement is executed otherwise not.",
              ),
              const TextSpan(
                text: "\n\nSyntax: \n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    "if(condition)\n{\n   // Statements to execute if\n   // condition is true\n}\n\n",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "Here, the condition after evaluation will be either true or false. C if statement accepts boolean values – if the value is true then it will execute the block of statements below it otherwise not. If we do not provide the curly braces ‘{‘ and ‘}’ after if(condition) then by default if statement will consider the first immediately below statement to be inside its block. ",
              ),
              const TextSpan(
                text: "\n\nExample: \n\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              TextSpan(
                text:
                    "if(condition)\n   statement1;\n   statement2;\n\n// Here if the condition is true, if block \n// will consider only statement1 to be inside \n// its block.",
                style: GoogleFonts.inconsolata(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text: "\n\nFlowchart \n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const WidgetSpan(
                child: Image(
                    image: NetworkImage(
                        "https://media.geeksforgeeks.org/wp-content/uploads/decision-making-c-1.png")),
              ),
              const TextSpan(
                text: "\n\nCPP\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const WidgetSpan(
                child: Image(image: AssetImage("assets/images/If.png")),
              ),
              const TextSpan(
                text: "\n\nOutput\n\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              TextSpan(
                text: "I am Not in if\n",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "\nAs the condition present in the if statement is false. So, the block below the if statement is not executed.\n",
              ),
              const TextSpan(
                text: "\nif-else in C/C++\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const TextSpan(
                text:
                    "\nThe if statement alone tells us that if a condition is true it will execute a block of statements and if the condition is false it won’t. But what if we want to do something else if the condition is false. Here comes the C else statement. We can use the else statement with if statement to execute a block of code when the condition is false. \n",
              ),
              const TextSpan(
                text: "\n\nSyntax: \n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    "if (condition)\n{\n    // Executes this block if\n    // condition is true\n}\nelse\n{\n    // Executes this block if\n    // condition is false\n}\n",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text: "\n\nFlowchart\n\n",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const WidgetSpan(
                child: Image(
                    image: NetworkImage(
                        "https://media.geeksforgeeks.org/wp-content/uploads/decision-making-c-2.png")),
              ),
              const TextSpan(
                text: "\n\nExample\n\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const WidgetSpan(
                child: Image(image: AssetImage("assets/images/If_else.png")),
              ),
              const TextSpan(
                text: "\n\nOutput\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "i is greater than 15",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "\n\nThe block of code following the else statement is executed as the condition present in the if statement is false.",
              ),
              const TextSpan(
                text: "\n\nnested-if in C/C++\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "A nested if in C is an if statement that is the target of another if statement. Nested if statements mean an if statement inside another if statement. Yes, both C and C++ allow us to nested if statements within if statements, i.e, we can place an if statement inside another if statement.\n",
              ),
              const TextSpan(
                text: "\n\nSyntax:\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    "if (condition1) \n{\n   // Executes when condition1 is true\n   if (condition2) \n   {\n      // Executes when condition2 is true\n   }\n}",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text: "\n\nFlow Diagram:\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const WidgetSpan(
                child: Image(
                    image: NetworkImage(
                        "https://media.geeksforgeeks.org/wp-content/uploads/decision-making-c-3.png")),
              ),
              const TextSpan(
                text: "\n\nExample: \n\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const WidgetSpan(
                child: Image(image: AssetImage("assets/images/Nested_if.png")),
              ),
              const TextSpan(
                text: "\n\nOutput: \n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "i is smaller than 15\ni is smaller than 12 too",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text: "\n\nif-else-if ladder in C/C++\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "Here, a user can decide among multiple options. The C if statements are executed from the top down. As soon as one of the conditions controlling the if is true, the statement associated with that if is executed, and the rest of the C else-if ladder is bypassed. If none of the conditions are true, then the final else statement will be executed. \n",
              ),
              const TextSpan(
                text: "\n\nSyntax:\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    "if (condition)\n    statement;\nelse if (condition)\n    statement;\n.\n.\nelse\n    statement;",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text: "\n\nFlow Diagram:\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const WidgetSpan(
                child: Image(
                    image: NetworkImage(
                        "https://media.geeksforgeeks.org/wp-content/uploads/decision-making-c-4.png")),
              ),
              const TextSpan(
                text: "\n\nExample: \n\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const WidgetSpan(
                child: Image(
                    image: AssetImage("assets/images/If_else_if_ladder.png")),
              ),
              const TextSpan(
                text: "\n\nOutput: \n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "i is 20\n",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text: "\n\nJump Statements in C/C++\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "These statements are used in C orC++ for the unconditional flow of control throughout the functions in a program. They support four types of jump statements:",
              ),
              const TextSpan(
                text: "\n\n1. C break: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "This loop control statement is used to terminate the loop. As soon as the break statement is encountered from within a loop, the loop iterations stop there, and control returns from the loop immediately to the first statement after the loop.",
              ),
              const TextSpan(
                text: "\n\nSyntax\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "break;\n",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "\n   1. Basically, break statements are used in situations when we are not sure about the actual number of iterations for the loop or we want to terminate the loop based on some condition. ",
              ),
              const WidgetSpan(
                child: Image(
                    image: NetworkImage(
                        "https://media.geeksforgeeks.org/wp-content/uploads/break.png")),
              ),
              const TextSpan(
                text: "\n\nExample: \n\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const WidgetSpan(
                child:
                    Image(image: AssetImage("assets/images/Linear_search.png")),
              ),
              const TextSpan(
                text: "\n\nOutput: \n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "Element found at position: 3\n",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text: "\n\n1. C continues: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "This loop control statement is just like the break statement. The continue statement is opposite to that of the break statement, instead of terminating the loop, it forces to execute the next iteration of the loop.\nAs the name suggests the continue statement forces the loop to continue or execute the next iteration. When the continue statement is executed in the loop, the code inside the loop following the continue statement will be skipped and the next iteration of the loop will begin.",
              ),
              const TextSpan(
                text: "\n\nSyntax\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "continue;\n\n",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
              const WidgetSpan(
                child: Image(
                    image: NetworkImage(
                        "https://media.geeksforgeeks.org/wp-content/uploads/continue.png")),
              ),
              const TextSpan(
                text: "\n\nExample: \n\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const WidgetSpan(
                child: Image(
                    image: AssetImage("assets/images/Continue_statement.png")),
              ),
              const TextSpan(
                text: "\n\nOutput: \n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "1 2 3 4 5 7 8 9 10\n",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "If you create a variable in if-else in C/C++, it will be local to that if/else block only. You can use global variables inside the if/else block. If the name of the variable you created in if/else is as same as any global variable then priority will be given to `local variable`. \n",
              ),
              const WidgetSpan(
                child: Image(image: AssetImage("assets/images/C_continue.png")),
              ),
              const TextSpan(
                text: "\n\n1. C goto: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "The goto statement in C/C++ also referred to as unconditional jump statement can be used to jump from one point to another within a function.",
              ),
              const TextSpan(
                text: "\n\nSyntax\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    "Syntax1      |   Syntax2\n----------------------------\ngoto label;  |    label:  \n.            |    .\n.            |    .\n.            |    .\nlabel:       |    goto label;\n",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "\n1. In the above syntax, the first line tells the compiler to go to or jump to the statement marked as a label. Here label is a user-defined identifier that indicates the target statement. The statement immediately followed after ‘label:’ is the destination statement. The ‘label:’ can also appear before the ‘goto label;’ statement in the above syntax. ",
              ),
              const WidgetSpan(
                child: Image(
                    image: NetworkImage(
                        "https://media.geeksforgeeks.org/wp-content/uploads/goto.png")),
              ),
              const TextSpan(
                text:
                    "1. Below are some examples of how to use goto statement:",
              ),
              const TextSpan(
                text: "\n\nExample: \n\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const WidgetSpan(
                child: Image(
                    image: AssetImage("assets/images/Goto_statement.png")),
              ),
              const TextSpan(
                text: "\n\nOutput: \n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "1 2 3 4 5 7 8 9 10\n",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text: "\n\n2. C return: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text:
                    "The return in C or C++ returns the flow of the execution to the function from where it is called. This statement does not mandatorily need any conditional statements. As soon as the statement is executed, the flow of the program stops immediately and return the control from where it was called. The return statement may or may not return anything for a void function, but for a non-void function, a return value is must be returned. ",
              ),
              const TextSpan(
                text: "\n\nSyntax\n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "return[expression];\n",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                text: "\n\nExample: \n\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const WidgetSpan(
                child: Image(image: AssetImage("assets/images/Statement.png")),
              ),
              const TextSpan(
                text: "\n\nOutput: \n\n",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "The sum is 20\n",
                style: GoogleFonts.inconsolata(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    );
  }
}

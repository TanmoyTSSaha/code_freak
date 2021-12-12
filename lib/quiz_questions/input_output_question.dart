class InputOutputQuestion {
  final int id, answer;
  final String questions;
  final List<String> options;

  InputOutputQuestion(
      {required this.id,
      required this.answer,
      required this.questions,
      required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "1. Which header file is used with input and output operations of C in C++?",
    "options": [
      'stdio.h',
      'cstdio',
      'iostream',
      'streamio'
    ],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "2.Which will be used with physical devices to interact from C++ program?",
    "options": [
      'programs',
      'Library',
      'Streams',
      'Iterators'
    ],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question":
        "3. How many streams are automatically created when executing a program?",
    "options": [
      '1','2','3','4'
    ],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "10. What is the benefit of c++ input and output over c input and output?",
    "options": [
      'Type safety',
      'Exception',
      'Both (1) & (2)',
      'Sequence container'
    ],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question":
        "Which of the following takes input from user?",
    "options": ['>>', '<<', '<', '>'],
    "answer_index": 0,
  },
  {
    "id": 6,
    "question": "Which of the following gives output?",
    "options": ['<', '<<', '>', '>>'],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question": "Which of the following is insertion operator?",
    "options": [
      '<', '<<', '>', '>>'
    ],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question": "Which of the following is excertion operator?",
    "options": ['<', '<<', '>', '>>'],
    "answer_index": 3,
  },
  {
    "id": 9,
    "question": "Which of the following is correct?",
    "options": [
      'cin<<"hello"',
      'cin<"hello"',
      'cin>>"hello";',
      'cin>"hello";'
    ],
    "answer_index": 2,
  },
  {
    "id": 10,
    "question": "which of the following is corect",
    "options": [
      'cout<<0;',
      'cout<<"0";',
      'cout<<"hello";',
      'all of the above'
    ],
    "answer_index": 3,
  },
];

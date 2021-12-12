class OperatorQuestion {
  final int id, answer;
  final String questions;
  final List<String> options;

  OperatorQuestion(
      {required this.id,
      required this.answer,
      required this.questions,
      required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Who invented C++?",
    "options": [
      'Dennis Ritchie',
      'Ken Thompson',
      'Brian Kernighan',
      'Bjarne Stroustrup'
    ],
    "answer_index": 3,
  },
  {
    "id": 2,
    "question": "____ is a variable that holds a memory address.",
    "options": [
      'Long double',
      'Float',
      'Char',
      'pointer'
    ],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question":
        "Which of the following is the correct syntax of including a user defined header files in C++?",
    "options": [
      '#include [userdefined]',
      '#include “userdefined”',
      '#include <userdefined.h>',
      '#include <userdefined>'
    ],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "Which of the following is used for comments in C++?",
    "options": [
      '/* comment ',
      '// comment */',
      '// comment',
      '** comment **'
    ],
    "answer_index": 3,
  },
  {
    "id": 5,
    "question":
        "Which of the following user-defined header file extension used in c++?",
    "options": ['hg', 'cpp', 'h', 'hf'],
    "answer_index": 2,
  },
  {
    "id": 6,
    "question": "Which of the following is a correct identifier in C++?",
    "options": ['VAR_1234', '\$var_name', '7VARNAME', '7var_name'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": "Which of the following is not a type of Constructor in C++?",
    "options": [
      'Default constructor',
      'Parameterized constructor',
      'Copy constructor',
      'Friend constructor'
    ],
    "answer_index": 3,
  },
  {
    "id": 8,
    "question": "Which of the following approach is used by C++??",
    "options": ['Left-right', 'Right-left', 'Bottom-up', 'Top-down'],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question": "Which one of the following is a keyword?",
    "options": [
      'Size',
      'Key',
      'Jump',
      'Switch'
    ],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question": "____ is the smallest individual unit in a program.",
    "options": [
      'Variable',
      'Control',
      'Character',
      'Token'
    ],
    "answer_index": 3,
  },
];

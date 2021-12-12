class ArrayQuestion{
  final int id,answer;
  final String questions;
  final List<String> options;

  ArrayQuestion(
    {required this.id,
    required this.answer,
    required this.options,
    required this.questions});
  
}

const List sample_data=[
  {
    "id":1,
    "question":"1. Which of the following correctly declares an array?",
    "options":[
      'int array[10];',
      'int array;',
      'array{10};',
      'array array[10]'
    ],
    "answer_index":0,
  },

  {
    "id":2,
    "question":"2. What is the index number of the last element of an array with 9 elements?",
    "options":[
      '9',
      '8',
      '0',
      'programmer-defined'

    ],
    "answer_index":1,
  },

  {
    "id":3,
    "question":"3. Which of the following accesses the seventh element stored in array??",
    "options":[
      'array[6];',
      'array[7];',
      'array(7);',
      'array;'

    ],
    "answer_index":0,
  },

  
  {
    "id":4,
    "question":"4. Which of the following gives the memory address of the first element in array?",
    "options":[
      'array[0];',
      'array[1];',
      'array(2);',
      'array;'

    ],
    "answer_index":0,
  },

  
  {
    "id":5,
    "question":"5. In given string 'Flutter' what is the index number of 'u' ?",
    "options":[
      '6',
      '2',
      '0',
      '3'

    ],
    "answer_index":1,
  },

  
  {
    "id":6,
    "question":"6. Which of the following is a valid C++ array definition? ",
    "options":[
      'int array[0];',
      'void number[7];',
      'float %payments[10];',
      'int nums[10];'

    ],
    "answer_index":3,
  },

  
  {
    "id":7,
    "question":"7. The subscript (or index) of an array can be…",
    "options":[
      'an integer',
      'a floating point number',
      'a character',
      'a negative number'

    ],
    "answer_index":0,
  },

  
  {
    "id":8,
    "question":"8. Which of the following array declarations is invalid?",
    "options":[
      'bool array1[10];',
      'double array2[20,0];',
      'char array3[30];',
      'double array4[7];'
    ],
    "answer_index":1,
  },

  
  {
    "id":9,
    "question":"9. In the statement a[3] = 5, which of the following is the index value?",
    "options":[
      'a',
      '3',
      'a[3]',
      '5'

    ],
    "answer_index":1,
  },

  
  {
    "id":10,
    "question":"10. What is the last legal subscript that can be used with the following array?  int values[5];",
    "options":[
      '0',
      '5',
      '6',
      '4'

    ],
    "answer_index":3,
  },
];
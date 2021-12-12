import 'package:code_freak_2/controller/array_question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArrayScoreScreen extends StatelessWidget {
  const ArrayScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ArrayQuestionController _qnController = Get.put(ArrayQuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              const Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                "${_qnController.numOfCorrectAns} out of ${_qnController.questions.length}",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const Spacer(flex: 3)
            ],
          )
        ],
      ),
    );
  }
}

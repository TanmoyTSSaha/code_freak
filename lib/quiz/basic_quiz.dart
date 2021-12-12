import 'package:code_freak_2/controller/basic_question_controller.dart';
import 'package:code_freak_2/constant.dart';
import 'package:code_freak_2/quiz_questions/basic_question.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BasicQuiz extends StatelessWidget {
  const BasicQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              _questionController.resetQuestionNumber();
            },
            icon: const Icon(Icons.arrow_back, color: Colors.black)),
        centerTitle: true,
        title: Text(
          "Quiz".toUpperCase(),
          style: const TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: _controller.nextQuestion,
            child: Text(
              "Skip".toUpperCase(),
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ],
      ),
      body: Stack(children: [
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Obx(
                  () => Text.rich(
                    TextSpan(
                      text:
                          "Question ${_questionController.questionNumber.value}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(color: Colors.black54),
                      children: [
                        TextSpan(
                          text: "/${_questionController.questions.length}",
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(
                thickness: 1.5,
                color: Colors.black54,
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Expanded(
                child: PageView.builder(
                  //Block manual swipe to the next quiz card
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _questionController.pageController,
                  onPageChanged: _questionController.updateTheOnNum,
                  itemCount: _questionController.questions.length,
                  itemBuilder: (context, index) => QuestionCard(
                    question: _questionController.questions[index],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
    required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding), // this is the margin for quiz card.
        padding: const EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: <Color>[
              Color(0xFF011C40),
              Color(0xFF023059),
            ],
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Text(
              question.questions,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.white),
            ),
            const SizedBox(height: kDefaultPadding / 2),
            ...List.generate(
              question.options.length,
              (index) => Option(
                text: question.options[index],
                index: index,
                press: () => _controller.checkAns(question, index),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Option extends StatelessWidget {
  const Option({
    Key? key,
    required this.text,
    required this.index,
    required this.press,
  }) : super(key: key);
  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (qnController) {
          Color getTheRightColor() {
            if (qnController.isAnswered) {
              if (index == qnController.correctAns) {
                return Colors.green;
              } else if (index == qnController.selectedAns &&
                  qnController.selectedAns != qnController.correctAns) {
                return Colors.red;
              }
            }
            return Colors.white;
          }

          IconData getTheRightIcon() {
            return getTheRightColor() == Colors.red ? Icons.close : Icons.done;
          }

          return InkWell(
            onTap: press,
            child: Container(
              margin: const EdgeInsets.only(top: kDefaultPadding),
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                border: Border.all(color: getTheRightColor()),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${index + 1}. $text",
                    style: TextStyle(color: getTheRightColor(), fontSize: 16),
                  ),
                  Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                      color: getTheRightColor() == Colors.white
                          ? Colors.transparent
                          : getTheRightColor(),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          color: getTheRightColor() == Colors.white
                              ? Colors.transparent
                              : getTheRightColor()),
                    ),
                    child: getTheRightColor() == Colors.white
                        ? null
                        : Icon(
                            getTheRightIcon(),
                            size: 16,
                          ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController>(
          init: QuestionController(),
          builder: (controller) {
            return Stack(
              children: [
                LayoutBuilder(
                  builder: (context, constraints) => Container(
                    width: constraints.maxWidth * controller.animation.value,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: const LinearGradient(
                        colors: <Color>[
                          Color(0xFF011C40),
                          Color(0xFF023059),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${(controller.animation.value * 60.00).round()} Sec",
                          style: const TextStyle(color: Colors.white),
                        ),
                        const Icon(
                          Icons.watch_later_outlined,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}

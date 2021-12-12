import 'package:code_freak_2/quiz_questions/array_question.dart';
import 'package:code_freak_2/score/array_score_screen.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/widgets.dart';

class ArrayQuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => _animation;

  late PageController _pageController;
  PageController get pageController => _pageController;

  final List<ArrayQuestion> _question = sample_data
      .map(
        (question) => ArrayQuestion(
          id: question['id'],
          questions: question['question'],
          options: question['options'],
          answer: question['answer_index'],
        ),
      )
      .toList();

  List<ArrayQuestion> get questions => _question;

  bool _isAnswered = false;
  bool get isAnswered => _isAnswered;

  late int _correctAns;
  int get correctAns => _correctAns;

  late int _selectedAns;
  int get selectedAns => _selectedAns;

  final RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => _questionNumber;

  late int _numOfCorrectAns = 0;
  int get numOfCorrectAns => _numOfCorrectAns;

  @override
  void onInit() {
    _animationController =
        AnimationController(duration: const Duration(seconds: 60), vsync: this);
    _animation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController)
          ..addListener(() {
            update();
          });
    _animationController.forward().whenComplete(nextQuestion);

    _pageController = PageController();

    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  void checkAns(ArrayQuestion question, int selectedIndex) {
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;

//will stop the counter.
    _animationController.stop();
    update();

// once user select the number after 3 seconds it will go to the next question.
    Future.delayed(
      const Duration(seconds: 3),
      () {
        nextQuestion();
      },
    );
  }

  void resetQuestionNumber() => _questionNumber.value = 1;

  void nextQuestion() {
    if (_questionNumber.value != _question.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: const Duration(milliseconds: 250), curve: Curves.ease);

      // to reset the questions after exiting the quiz page
      _pageController.addListener(() {
        _questionNumber.value = _pageController.page!.round() + 1;
      });

      //reset the counter.
      _animationController.reset();

      //then start it again.
      _animationController.forward().whenComplete(nextQuestion);
    } else {
      Get.to(() => const ArrayScoreScreen());
    }
  }

  void updateTheOnNum(int index) {
    _questionNumber.value = index + 1;
  }
}

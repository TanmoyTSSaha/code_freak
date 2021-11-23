import 'package:code_freak_2/components/score_screen.dart';
import 'package:code_freak_2/questions/questions.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/widgets.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => _animation;

  late PageController _pageController;
  PageController get pageController => _pageController;

  final List<Question> _question = sample_data
      .map(
        (question) => Question(
          id: question['id'],
          questions: question['question'],
          options: question['options'],
          answer: question['answer_index'],
        ),
      )
      .toList();

  List<Question> get questions => _question;

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

  void checkAns(Question question, int selectedIndex) {
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

  void nextQuestion() {
    if (_questionNumber.value != _question.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: const Duration(milliseconds: 250), curve: Curves.ease);

      //reset the counter.
      _animationController.reset();

      //then start it again.
      _animationController.forward().whenComplete(nextQuestion);
    } else {
      Get.to(() => const ScoreScreen());
    }
  }

  void updateTheOnNum(int index) {
    _questionNumber.value = index + 1;
  }
}

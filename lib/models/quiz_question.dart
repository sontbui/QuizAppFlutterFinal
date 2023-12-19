class QuizQuestion {
  const QuizQuestion(this.questionString, this.optionAnswer);

  final String questionString;
  final List<String> optionAnswer;
  List<String> getShuffledAnswer() {
    final shuffledList = List.of(optionAnswer);
    shuffledList.shuffle();
    return shuffledList;
  }
}

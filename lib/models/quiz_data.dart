class quizquestion {
  quizquestion(this.questions, this.answers);
  final String questions;
  final List<String> answers;
  List<String> getShuffle() {
    final shuffledlist = List.of(answers);
    shuffledlist.shuffle();
    return shuffledlist;
  }
}

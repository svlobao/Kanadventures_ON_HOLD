class Flashcard {
  String question = '';
  String answer = '';
  String? vobcabClass;
  String? function;

  Flashcard(
      {required this.question,
      required this.answer,
      this.vobcabClass,
      this.function});
}

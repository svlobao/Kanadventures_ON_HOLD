class Flashcard {
  String question = '';
  String answer = '';
  String? theme;
  String? function;

  Flashcard(
      {required this.question,
      required this.answer,
      this.theme,
      this.function});
}

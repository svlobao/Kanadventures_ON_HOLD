class VocabList {
  String kanji = '';
  String word = '';
  List<String> meaning = [];
  String function = '';
  String theme = '';
  String? jlpt;

  VocabList(
      {required this.kanji,
      required this.word,
      required this.meaning,
      required this.function,
      required this.theme,
      this.jlpt});
}

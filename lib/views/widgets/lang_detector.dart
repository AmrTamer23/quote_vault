bool isEnglish(String text) {
  RegExp englishAlphabetRegExp = RegExp('[A-Za-z]+');
  return englishAlphabetRegExp.hasMatch(text);
}

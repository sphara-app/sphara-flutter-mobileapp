// extension to Capitalized each first letter of sentence
extension StringExtension on String {
  String toCapitalize() {
    List<String> textList = trim().split(" ");
    if (textList.length == 1) {
      if (textList[0].length == 2) {
        return textList.first.toUpperCase();
      }
      return textList.first[0].toUpperCase() +
          textList.first.substring(1).toLowerCase();
    }
    textList = textList.map((e) {
      return e[0].toUpperCase() + e.substring(1).toLowerCase();
    }).toList();
    return textList.join(" ");
  }
}

// extension to remove  first letter of word if it is "/"
extension StringExtension2 on String {
  String removePath() {
    List<String> textList = trim().split(" ");
    if (textList.length == 1) {
      if (textList[0].contains("/")) {
        return textList[0].replaceAll("/", "");
      }
    }
    return textList.join(" ");
  }
}

// extension to add "/" at first letter
extension StringExtension3 on String {
  String addPath() {
    List<String> textList = trim().split(" ");
    if (textList.length == 1) {
      if (!textList[0].contains("/")) {
        return "/${textList[0]}";
      }
    }
    return textList.join(" ");
  }
}

class Routes {
  static String tableView = '/TablePage';


  static get2({required String key, required List<String> value}) {
    RegExp reg_x = RegExp(r':\w+/'); // get all the patterns :word
    String pattern = key; // save the old string
    int i = 0;
    for (var match in reg_x.allMatches(key)) {
      //loop for changes all the values
      if (value.length > i) {
        pattern = pattern.replaceFirst(match[0].toString(), '${value[i]}/');
      }
      i++;
    }

    print("we${value.toString()}");
    print("we${pattern}");
    return pattern;
  }
}

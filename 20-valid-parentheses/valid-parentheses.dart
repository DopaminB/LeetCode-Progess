class Solution {
  bool isValid(String s) {
    List<String> stack = [];

    for (int i = 0; i < s.length; i++) {
      String c = s[i];

      if (c == '(' || c == '{' || c == '[') {
        stack.add(c);
      } else {
        if (stack.isEmpty) {
          return false;
        }

        String top = stack.removeLast();

        if (c == ')' && top != '(') return false;
        if (c == '}' && top != '{') return false;
        if (c == ']' && top != '[') return false;
      }
    }

    return stack.isEmpty;
  }
}
class Solution {
  List<String> fizzBuzz(int n) {
    List<String> res = [];

    for (int i = 1; i <= n; i++) {
      String s = '';
      if (i % 3 == 0) s += 'Fizz';
      if (i % 5 == 0) s += 'Buzz';
      if (s == '') s = i.toString();
      res.add(s);
    }

    return res;
  }
}
class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;

    Map<String, int> count = {};

    for (int i = 0; i < s.length; i++) {
      String c = s[i];
      count[c] = (count[c] ?? 0) + 1;
    }

    for (int i = 0; i < t.length; i++) {
      String c = t[i];
      if (!count.containsKey(c)) return false;
      count[c] = count[c]! - 1;
      if (count[c] == 0) count.remove(c);
    }

    return count.isEmpty;
  }
}
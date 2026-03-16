class Solution {
  bool isPalindrome(String s) {
    s = s.toLowerCase();
    int l = 0;
    int r = s.length - 1;

    while (l < r) {
      while (l < r && !isAlphaNum(s[l])) l++;
      while (l < r && !isAlphaNum(s[r])) r--;

      if (s[l] != s[r]) return false;
      l++;
      r--;
    }

    return true;
  }

  bool isAlphaNum(String c) {
    return RegExp(r'[a-z0-9]').hasMatch(c);
  }
}
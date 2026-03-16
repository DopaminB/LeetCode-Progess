class Solution {
  bool isPalindrome(int x) {
    String s = x.toString();
    int l = 0;
    int r = s.length - 1;

    while (l < r) {
      if (s[l] != s[r]) {
        return false;
      }
      l++;
      r--;
    }

    return true;
  }
}
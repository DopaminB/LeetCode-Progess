class Solution {
  void reverseString(List<String> s) {
    int i = 0;
    int j = s.length - 1;

    while (i < j) {
      String temp = s[i];
      s[i] = s[j];
      s[j] = temp;
      i++;
      j--;
    }
  }
}
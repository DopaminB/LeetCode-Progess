class Solution {
  String reverseWords(String s) {
    List<String> words = s.split(' ');
    for (int i = 0; i < words.length; i++) {
      words[i] = reverse(words[i]);
    }
    return words.join(' ');
  }

  String reverse(String word) {
    List<String> chars = word.split('');
    int l = 0;
    int r = chars.length - 1;
    while (l < r) {
      String temp = chars[l];
      chars[l] = chars[r];
      chars[r] = temp;
      l++;
      r--;
    }
    return chars.join('');
  }
}
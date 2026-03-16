class Solution {
  int majorityElement(List<int> nums) {
    Map<int, int> count = {};
    
    for (int i = 0; i < nums.length; i++) {
      int n = nums[i];
      count[n] = (count[n] ?? 0) + 1;
      
      if (count[n]! > nums.length ~/ 2) {
        return n;
      }
    }

    return -1;
  }
}
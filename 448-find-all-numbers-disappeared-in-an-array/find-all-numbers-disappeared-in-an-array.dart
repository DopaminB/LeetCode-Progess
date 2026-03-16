class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    Set<int> seen = {};
    List<int> res = [];

    for (int i = 0; i < nums.length; i++) {
      seen.add(nums[i]);
    }

    for (int i = 1; i <= nums.length; i++) {
      if (!seen.contains(i)) {
        res.add(i);
      }
    }

    return res;
  }
}
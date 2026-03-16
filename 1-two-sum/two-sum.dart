class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int,int> seen = {};
    for(int i = 0; i < nums.length; i++){
      int need = target - nums[i];
      if(seen.containsKey(need)){
        return [seen[need]!, i];
      }
      seen[nums[i]] = i;
    }
    return [];
  }
}
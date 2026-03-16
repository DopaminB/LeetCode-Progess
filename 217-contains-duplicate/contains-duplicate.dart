class Solution {
  bool containsDuplicate(List<int> nums) {
  Set<int> s = {};
  for(int n in nums){
    if(s.contains(n)){
      return true;
    }
    s.add(n);
  }
  return false;
}
}
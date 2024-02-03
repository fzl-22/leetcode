/// Name      : Ahmad Faisal
/// User ID   : zielisme
/// Problem   : Two Sum
/// Category  : EASY
/// URL       : https://leetcode.com/problems/two-sum/

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> numsIndexes = {};

    for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i];

      if (numsIndexes.containsKey(complement)) {
        return [numsIndexes[complement]!, i];
      }

      numsIndexes[nums[i]] = i;
    }

    return [];
  }
}

/// MAIN
void main() {
  final solution = Solution();
  final Map<List<int>, int> testCases = {
    [2, 7, 11, 15]: 9,
    [3, 2, 4]: 6,
    [3, 3]: 6,
  };

  for (final test in testCases.keys) {
    print(solution.twoSum(test, testCases[test]!));
  }
}

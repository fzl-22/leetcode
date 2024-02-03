/// Name      : Ahmad Faisal
/// User ID   : zielisme
/// Problem   : Palindrome Number
/// Category  : EASY
/// URL       : https://leetcode.com/problems/palindrome-number/

class Solution {
  bool isPalindrome(int x) {
    final String strX = x.toString();
    final int length = strX.length;

    for (int i = 0; i < length / 2; i++) {
      if (strX[i] != strX[length - i - 1]) {
        return false;
      }
    }

    return true;
  }
}

/// MAIN
void main() {
  final Solution solution = Solution();
  final List<int> testCases = [121, -121, 10];

  for (int test in testCases) {
    print(solution.isPalindrome(test));
  }
}

class Solution {
    func getCommon(_ nums1: [Int], _ nums2: [Int]) -> Int {
        let setResult: Set = Set(nums1)
        for i in nums2 {
            if setResult.contains(i) {
                return i
            }
        }
        return -1
    }
}
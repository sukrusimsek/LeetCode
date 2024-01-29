class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let numsMerge = nums1 + nums2
        let sortedMerge = numsMerge.sorted()
        let count = sortedMerge.count
        var result = 0.0
        if count % 2 == 0 {
            let middleIndex1 = count / 2 - 1
            let middleIndex2 = count / 2
            result = Double(sortedMerge[middleIndex1] + sortedMerge[middleIndex2]) / 2.0
        } else {
            let middleIndex = count / 2
            result = Double(sortedMerge[middleIndex])
        }
        return result
    }
}
class Solution {
    func arithmeticTriplets(_ nums: [Int], _ diff: Int) -> Int {
        var counter = 0
        for i in nums.indices {
            for j in nums.indices {
                if i < j && nums[j] - nums[i] == diff {
                    for k in nums.indices {
                        if j < k && nums[k] - nums[j] == diff {
                            counter += 1
                        }
                    }
                }  
            }
        }
        return counter
    }
}
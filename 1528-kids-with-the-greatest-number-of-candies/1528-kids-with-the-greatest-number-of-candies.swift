class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var result: [Bool] = []
        for i in candies.indices {
            if candies[i] + extraCandies >= candies.max()! {
                result.append(true)
            } else {
                result.append(false)
            }
        }
        return result
    }
}
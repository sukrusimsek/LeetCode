class Solution {
    func finalPrices(_ prices: [Int]) -> [Int] {
        var ans = [Int]()
        for i in 0..<prices.count {
            var sol = false
            for j in i+1..<prices.count {
                if j > i && prices[j] <= prices[i] {
                    sol = true
                    ans.append(prices[i] - prices[j])
                    break
                }
            }
            if sol == false {
                ans.append(prices[i])
            }
        }
        return ans
    }
}
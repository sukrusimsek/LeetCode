class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var enBuyukPara = 0
        var total = 0
        for i in accounts {
            for j in i {
                total += j
            }
            enBuyukPara = max(total, enBuyukPara)
            total = 0
    }
    return enBuyukPara
    }
}
class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var res = [String: [String]]()

        for i in 0..<strs.count {
            let sorted = String(strs[i].sorted())
            if var team = res[sorted] {
                team.append(strs[i])
                res[sorted] = team
            } else {
                res[sorted] = [strs[i]]
            }
        }
        return Array(res.values)
    }
}
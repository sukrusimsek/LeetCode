class Solution {
    func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
        var counter = 0
        var rule = 0
        switch ruleKey {
            case "type": rule = 0
            case "color": rule = 1
            case "name": rule = 2
            default: rule = 0
        }
        for item in items {
            if item[rule] == ruleValue {
                counter += 1
            }
        }
        return counter
    }
}
class Solution {
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        var counter = 0
        for i in operations {
            if i == "--X" || i == "X--" {
                counter -= 1
            } else {
            counter += 1
            }
        }
        return counter
    }
}
class Solution {
    func numberOfEmployeesWhoMetTarget(_ hours: [Int], _ target: Int) -> Int {
        var counter = 0
        for i in hours {
            if i >= target {
                counter += 1
            }
        }
        return counter
    } 
}
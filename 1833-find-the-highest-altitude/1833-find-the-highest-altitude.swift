class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var countArr = [Int]()
        var newGain = [Int]()
        for i in gain {
            newGain.append(i)
        }
        newGain.insert(0, at: 0)
        var counter = 0
        for i in newGain {
            counter += i
            countArr.append(counter)
        }
        return countArr.max()!
    }
}
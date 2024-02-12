class Solution {
    func reverse(_ x: Int) -> Int {
        if x == 0 { return 0 }
        let xs = String(x)
        let arr = xs.compactMap { Int(String($0)) }
        var newNum = ""
        for i in arr {
            newNum += String(i)
        }
        if newNum.last! == "0" {
            let indexToRemove = newNum.index(before: newNum.endIndex) 
            newNum.remove(at: indexToRemove)
        }
        let reversedResult = String(newNum.reversed())
        var result = Int(reversedResult)!
        if xs.first! == "-" {
            var negative = "-"
            let prefix = reversedResult
            negative = negative + prefix
            result = Int(negative)!
        }
        return Int(Int32.max) < result || Int(Int32.min) > result ? 0 : result
    }
}
class Solution {
    func romanToInt(_ s: String) -> Int {
        var result: Int = 0
        var prev: Character = " "
        let dict: [Character : Int] = ["I":1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        for i in s {
            if prev == "I" && (i == "X" || i == "V") {
                result += (dict[i]! - 2 * dict[prev]!)
            } else if prev == "X" && (i == "L" || i == "C") {
				result += (dict[i]! - 2 * dict[prev]!) 
			} else if prev == "C" && (i == "D" || i == "M") {
				result += (dict[i]! - 2 * dict[prev]!)
			} else {
				result += dict[i]!
			}
			prev = i
        }        
        return result
    }
}
class Solution {
    func mostWordsFound(_ sentences: [String]) -> Int {
        var arrayForNumber = [Int]()
        for sentence in sentences {
            let words = sentence.split(separator: " ")
            arrayForNumber.append(words.count)
        }
        let maxNumber = arrayForNumber.max()
        return maxNumber!
    } 
}
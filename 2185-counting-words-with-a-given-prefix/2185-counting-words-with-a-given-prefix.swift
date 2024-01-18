class Solution {
    func prefixCount(_ words: [String], _ pref: String) -> Int {
        let charCount = pref.length
        var counter = 0
        for i in words {
            let firstChars = String(i.prefix(charCount))
            print(firstChars)
            if firstChars == pref {
                counter += 1
            }  
        }
        return counter
    }
}
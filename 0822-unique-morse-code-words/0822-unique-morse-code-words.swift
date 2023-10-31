class Solution {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        var set: Set<String> = []
        let morseCodeDict: [Character: String] = [
        "a": ".-", "b": "-...", "c": "-.-.", "d": "-..", "e": ".",
        "f": "..-.", "g": "--.", "h": "....", "i": "..", "j": ".---",
        "k": "-.-", "l": ".-..", "m": "--", "n": "-.", "o": "---",
        "p": ".--.", "q": "--.-", "r": ".-.", "s": "...", "t": "-",
        "u": "..-", "v": "...-", "w": ".--", "x": "-..-", "y": "-.--",
        "z": "--.."
        ]   
        for i in words {
            var word = ""
            for j in i {
                word.append(morseCodeDict[j]!)
            }
            set.insert(word)
        }
        return set.count
    } 
}
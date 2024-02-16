class Solution {
    func intToRoman(_ num: Int) -> String {
    var varNum = num
    var result = ""
    while varNum > 0 {
        switch varNum {
        case let x where x >= 1000:
            varNum -= 1000
            result.append("M")
        case let x where x >= 900:
            varNum -= 900
            result.append("CM")
        case let x where x >= 500:
            varNum -= 500
            result.append("D")
        case let x where x >= 400:
            varNum -= 400
            result.append("CD")
        case let x where x >= 100:
            varNum -= 100
            result.append("C")
        case let x where x >= 90:
            varNum -= 90
            result.append("XC")
        case let x where x >= 50:
            varNum -= 50
            result.append("L")
        case let x where x >= 40:
            varNum -= 40
            result.append("XL")
        case let x where x >= 10:
            varNum -= 10
            result.append("X")
        case let x where x >= 9:
            varNum -= 9
            result.append("IX")
        case let x where x >= 5:
            varNum -= 5
            result.append("V")
        case let x where x >= 4:
            varNum -= 4
            result.append("IV")
        case let x where x >= 1 && x < 4:
            varNum -= 1
            result.append("I")
        default:
            break
        }
    }
    return result
    }
}
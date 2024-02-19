class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        if n <= 0 { return false }
        var number = n
        while number > 1 {
            if number % 2 != 0 {
                return false
            }
            number /= 2
        }
    
    return true
    }   
}

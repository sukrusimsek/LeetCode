class Solution {
    func customSortString(_ order: String, _ s: String) -> String {
         var arr:[Int] = Array(repeating:0, count:s.count)
        var ans: String = ""
        let sArr = Array(s)

        for i in order {
            for j in (0..<s.count) {
                if (i == sArr[j]) {
                    arr[j] = 1
                    ans = ans + String(sArr[j])
                }
            }
        }


        for i in (0..<arr.count) {
            if(arr[i] == 0) {
                ans = ans + String(sArr[i])
            }
        }

        return ans
    }
}
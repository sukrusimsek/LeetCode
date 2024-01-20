class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        /*
        Long Answer
        var counter = 0
        for i in grid {
            for j in i {
                print(j)
                if j < 0 {
                    counter += 1
                }
            }
        }
        return counter*/
        //Short Answer
        var counter = 0
        for i in grid {
            counter = counter + i.reduce(0) { $1 < 0 ? $0 + 1 : $0}
        }
        return counter

    }
}

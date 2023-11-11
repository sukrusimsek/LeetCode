class Solution {
    func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
        let people = zip(names, heights).map { (name: $0, height: $1) }
        let sortedP = people.sorted { $0.height > $1.height }
        return sortedP.map(\.name)
    }
}
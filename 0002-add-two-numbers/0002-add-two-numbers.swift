class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        return _addTwoNumbers(l1, l2)
    }

    private func _addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?, carryOver: Int = 0) -> ListNode? {
        guard l1 != nil || l2 != nil else {
            return carryOver > 0 ? ListNode(carryOver) : nil
        }
        let sum = addTwoNumbers(l1?.val, l2?.val, carryOver: carryOver)
        return ListNode(sum.unit, _addTwoNumbers(l1?.next, l2?.next, carryOver: sum.carryOver))
    }
    private func addTwoNumbers(_ numA: Int?, _ numB: Int?, carryOver: Int) -> (unit: Int, carryOver: Int) {
        var sum = carryOver
        if let a = numA {
            sum += a
        }
        if let b = numB {
            sum += b
        }
        return (unit: sum % 10, carryOver: sum / 10)
    }
}

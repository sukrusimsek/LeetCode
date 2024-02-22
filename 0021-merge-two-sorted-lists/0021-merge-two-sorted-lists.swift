/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var list1 = list1
        var list2 = list2
        let result = ListNode()
        var tail = result
        while list1 != nil && list2 != nil {
            if list1!.val < list2!.val {
                tail.next = list1
                list1 = list1?.next
            } else {
                tail.next = list2
                list2 = list2?.next
            }
            tail = tail.next!
        }
        tail.next = list1 == nil ? list2 : list1
        return result.next
    }
}
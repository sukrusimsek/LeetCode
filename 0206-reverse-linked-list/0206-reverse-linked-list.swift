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
    func reverseList(_ head: ListNode?) -> ListNode? {
        var newHead = head
        var current = head?.next
        head?.next = nil
        while current != nil
        {
            let next = current!.next
            current!.next = newHead
            newHead = current
            current = next
        }
        return newHead
    }
}
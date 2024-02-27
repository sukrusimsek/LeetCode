class Solution {
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        var res = 0
        func dfs(_ node: TreeNode?) -> Int {
            guard let node = node else { return 0 }
            let leftDepth = dfs(node.left)
            let rightDepth = dfs(node.right)
            res = max(res, leftDepth + rightDepth)
            return 1 + max(leftDepth, rightDepth)
        }
        dfs(root)

        return res
    }
}
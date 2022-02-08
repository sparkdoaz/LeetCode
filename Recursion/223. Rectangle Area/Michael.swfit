/**
 Runtime: 28 ms, faster than 55.56% of Swift online submissions for Rectangle Area.
 Memory Usage: 13.4 MB, less than 88.89% of Swift online submissions for Rectangle Area.
*/

class Solution {
    func computeArea(_ ax1: Int, _ ay1: Int, _ ax2: Int, _ ay2: Int, _ bx1: Int, _ by1: Int, _ bx2: Int, _ by2: Int) -> Int {
        let r1 = (ax2 - ax1) * (ay2 - ay1)
        let r2 = (bx2 - bx1) * (by2 - by1)
        var total = r1 + r2
        
        
        guard bx1 > ax2 || ax1 > bx2 || by1 > ay2 || ay1 > by2 else {
            let cx1 = max(ax1, bx1)
            let cy1 = max(ay1, by1)
            let cx2 = min(ax2, bx2)
            let cy2 = min(ay2, by2)
            let overlap = (cx2 - cx1) * (cy2 - cy1)
            total -= overlap
            return total
        }
        
        return total
    }
}

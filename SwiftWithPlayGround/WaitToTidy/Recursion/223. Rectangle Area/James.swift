class Solution {
    func computeArea(_ ax1: Int, _ ay1: Int, _ ax2: Int, _ ay2: Int, _ bx1: Int, _ by1: Int, _ bx2: Int, _ by2: Int) -> Int {
        // A 面積 + B面積 - 交集面積
        let ARect = (ax2 - ax1) * (ay2 - ay1)
        let BRect = (bx2 - bx1) * (by2 - by1)
        let interRightX = min(ax2, bx2)
        let interLeftX = max(ax1, bx1)
        let interUpperY = min(ay2, by2)
        let interBelowY = max(ay1, by1)
        let interRect = (interRightX - interLeftX) * (interUpperY - interBelowY)
        
        if interRightX - interLeftX < 0 || interUpperY - interBelowY < 0 {
            return ARect + BRect
        } else {
            return ARect + BRect - interRect
        }
    }
}

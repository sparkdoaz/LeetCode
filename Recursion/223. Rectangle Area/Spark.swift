class Solution {
    func computeArea(_ ax1: Int, _ ay1: Int, _ ax2: Int, _ ay2: Int, _ bx1: Int, _ by1: Int, _ bx2: Int, _ by2: Int) -> Int {
        let area1 = (ax2-ax1) * (ay2-ay1)
        let area2 = (bx2-bx1) * (by2-by1)

        if isCover(ax1,ay1,ax2,ay2,bx1,by1,bx2,by2) {
            let coverLeft = max(ax1,bx1) 
            let coverRight = min(ax2,bx2)
            let coverWidth = (coverRight - coverLeft) 
        
            let coverTop = min(ay2,by2) 
            let coverBottom = max(ay1,by1)
            let coverHeight = (coverTop - coverBottom)
            let coverArea = (coverWidth * coverHeight)
            return area1 + area2 - coverArea
        } else {
            return area1 + area2
        }
    }
    
    func isCover(_ ax1: Int, _ ay1: Int, _ ax2: Int, _ ay2: Int, _ bx1: Int, _ by1: Int, _ bx2: Int, _ by2: Int) -> Bool {
        if ((bx1-ax2) > 0) {
            // 第二個長方形位於右側且不重疊
            return false
        } else if ((bx2-ax1) < 0) {
            // 第二個長方形位於左側且不重疊
            return false
        } else if (min(by1,by2) - max(ay1,ay2) > 0 ) {
            // 第二個長方形位於上方且不重疊
            return false
        } else if (max(by1,by2) - min(ay1,ay2) < 0 ) {
            // 第二個長方形位於下方且不重疊
            return false
        } else {
            return true
        }  
    }
}
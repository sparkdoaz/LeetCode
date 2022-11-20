// https://leetcode.com/problems/top-k-frequent-words/

import Foundation
import XCTest

class Solution {
    func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        
        return []
    }
}

class Tests: XCTestCase {
    var solution = Solution()

    func test1() {
        XCTAssertEqual(solution.topKFrequent(["i","love","leetcode","i","love","coding"], 2),
                       ["i","love"])
    }
    
    func test2() {
        XCTAssertEqual(solution.topKFrequent(["the","day","is","sunny","the","the","the","sunny","is","is"], 4),
                       ["the","is","sunny","day"])
    }
}

Tests.defaultTestSuite.run()

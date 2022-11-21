// https://leetcode.com/problems/top-k-frequent-words/

import Foundation
import XCTest

class Solution {
    func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        
        var dic: [String: Int] = [:]
        
        // update
        for word in words {
            if let count = dic[word] {
                dic.updateValue(count + 1, forKey: word)
            } else {
                dic.updateValue(1, forKey: word)
            }
        }
        
        // sort
        let sortedByValue = dic.sorted { lhs, rhs in
            return lhs.value > rhs.value || (lhs.value == rhs.value && lhs.key.lexicographicallyPrecedes(rhs.key))
        }
        
        return sortedByValue.prefix(k).map { obj in
            return obj.key
        }
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
    
    // K Bigger than input
    func test3() {
        XCTAssertEqual(solution.topKFrequent(["the","day"], 4),
                       ["day", "the"])
    }
    
    // the and thb have same frequent
    func test4() {
        XCTAssertEqual(solution.topKFrequent(["the","a", "b", "the", "thb", "the", "the", "thb", "thb", "thb", "a", "c"], 4),
                       ["thb", "the", "a", "b"])
    }
}

Tests.defaultTestSuite.run()

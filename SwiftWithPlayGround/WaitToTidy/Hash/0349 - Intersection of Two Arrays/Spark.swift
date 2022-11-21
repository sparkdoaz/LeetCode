class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let set1: Set<Int> = Set(nums1)
        let set2: Set<Int> = Set(nums2)

        let temp = set1.intersection(set2)
        return Array(temp) 
        //return set1.filter({ set2.contains($0) })
    }
}
class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let set1: Set<Int> = Set(nums1)
        let set2: Set<Int> = Set(nums2)

        let temp = set1.intersection(set2)

        var result: [Int] = []

        for i in temp {

            let nums1_i_count = nums1.filter { $0 == i }.count
            let nums2_i_count = nums2.filter { $0 == i }.count

            let count = min(nums1_i_count, nums2_i_count)

            result += Array(repeating: i, count: count)
        }

        return result
    }
}
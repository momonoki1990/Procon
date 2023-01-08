package main

import (
	"fmt"
)

func twoSum(nums []int, target int) ([]int) {
	m := make(map[int]int)
   for i, num := range nums {
	diff := target - num
	if val, found := m[diff]; found {
		return []int{val, i}
	}
	  m[num] = i
   }
   return nil
}

func main() {
	input := []int{3,2,4}
	target := 6
	output := twoSum(input, target)
	fmt.Println(output)
}
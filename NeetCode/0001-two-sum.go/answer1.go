package main

import (
	"fmt"
)

func twoSum(nums []int, target int) ([]int) {
   for i, num1 := range nums {
	for j, num2 := range nums {
		if (i == j) {
			continue
		}
		if sum := num1 + num2; sum == target {
			return []int{i, j}
		}
	}
   } 
   return make([]int, 2)
}

func main() {
	input := []int{3,3}
	target := 6
	output := twoSum(input, target)
	fmt.Println(output)
}
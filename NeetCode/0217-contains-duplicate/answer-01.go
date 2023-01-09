package main

import (
	"fmt"
)

func containsDuplicate(nums []int) bool {
    m := make(map[int]bool)
    for _, num := range nums {
        if _, found := m[num]; found {
			return true
		}
		m[num] = true
    }
	return false
}

func main() {
	input := []int{1,2,3,4}
	output := containsDuplicate(input)
	fmt.Println(output)
}
package main

import (
	"fmt"
	"strings"
)

func removeChar(s string, c string) string {
	return strings.Replace(s, c, "", 1)
}

func isAnagram(s string, t string) bool {
	if len(s) != len(t) {
		return false
	}
	memo := t
	for _, c := range s {
		removed := removeChar(memo, string(c))
		if removed == memo {
			return false
		} else {
			memo = removed
		}
	}
    return true
}

func main() {
	s := "anagram"
	t := "nagarma"
	result := isAnagram(s, t)
	fmt.Println(result)

}
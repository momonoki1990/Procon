package main

import "fmt"

var pairs = map[string]string{"(": ")", "{": "}", "[": "]"}

func isValid(s string) bool {
	var stack []string
	for i := 0; i < len(s); i++ {
		c := string(s[i])
		_, ok := pairs[c]
		if ok {
			// c is opening parenthesis
			stack = append(stack, c)
			continue
		}
		// c is closing parenthesis
		if len(stack) == 0 {
			// no opening paranthesis in stack
			return false
		}
		last := stack[len(stack)-1]
		pair, _ := pairs[last]
		if c == pair {
			// parentheses are correctly corresponding
			stack = stack[:len(stack)-1]
			continue
		}
		return false
	}
	return len(stack) == 0
}

func main() {
	input := "()[]{()}"
	output := isValid(input)
	fmt.Println(output)
}

package main

import (
	"fmt"
	"strconv"
)

func reverse(s string) string {
	var reversed string
	for _, c := range s {
		reversed = string(c) + reversed
	}
	return reversed
}

// func to_rpn(formula string) string {
// 	// var op = 
// 	// for _, c_rune := range formula {
// 	// 	c_str := string(c_rune)
// 	// 	if (c_str == "*") {

// 	// 	}
// 	// 	fmt.Println(string(c))
// 	// }
// }

// NOTE: 普通の数式(文字列)を逆ポーランド記法に変換して計算したかったが、断念。。。
func eval_formula(formula string) {
	// var stack []string
	for _, c := range formula {
		fmt.Println(string(c))
	}
}

func main() {
	var slice []int
	ops := []string{"", "*"}
	for num := 1000; num <= 1000; num++ {
		num_str := strconv.Itoa(num)
		for i := 0; i < len(ops); i++ {
			for j := 0; j < len(ops); j++ {
				for k := 0; k < len(ops); k++ {
					if (ops[i] == "" && ops[j] == "" && ops[k] == "") {
						continue
					}
					formula := string(num_str[0]) + ops[i] + string(num_str[1]) + ops[j] + string(num_str[2]) + ops[k] + string(num_str[3])
					fmt.Println(formula)
					eval_formula(formula)
				}
			}
		}
	}
	fmt.Println(slice)
}

package main

import (
	"fmt"
)

func main() {
	var task1 = "Learn Go Programming"

	var taskItems = []string{task1, "Do mini project"}

	fmt.Println("Go Crash course project...")
	fmt.Println("")
    fmt.Println("\tTo Do List")

	for index, task := range taskItems{
		fmt.Println(index+1, task)
	}
}
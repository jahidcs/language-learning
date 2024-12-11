package main

import (
	"fmt"
	"net/http"
)

var task1 = "Learn Go Programming"
var taskItems = []string{task1, "Do mini project"}

func main() {
	fmt.Println("Go Crash course project...")
	var task1 = "Learn Go Programming"
	var taskItems = []string{task1, "Do mini project"}

	http.HandleFunc("/", helloUser)
	http.HandleFunc("/todo-list", showtasksHttp)
	http.ListenAndServe(":8080", nil)


	

	fmt.Println()
	showtasks(taskItems)
	
	fmt.Println()
	taskItems = addTask(taskItems, "Learn from documentation")

	fmt.Println()
	showtasks(taskItems)
}

func showtasks(taskItems[]string){
    fmt.Println("\tTo Do List")

	for index, task := range taskItems{
		// fmt.Println(index+1, ".", task)
		fmt.Printf("%d > %s\n", index+1, task)
	}
}

func addTask(taskItems []string, newTask string)[]string{
	var taskItemUpdate = append(taskItems, newTask)
	return taskItemUpdate
}


func showtasksHttp(writer http.ResponseWriter, request *http.Request){
    fmt.Fprintln(writer, "\tTo Do List")

	for index, task := range taskItems{
		fmt.Fprintln(writer, index+1, ".", task)
	}
}

func helloUser(writer http.ResponseWriter, request *http.Request){
	var greeting =  "Go Crash course"
	fmt.Fprintln(writer, greeting)
}
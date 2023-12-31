package main

func sum(s []int, c chan int) {
	sum := 0
	for _, v := range s {
		sum += v
	}
	c <- sum // send sum to c
}

//export temp
func temp() (int, int) {
	s := []int{7, 2, 8, -9, 4, 0}

	c := make(chan int)
	go sum(s[:len(s)/2], c)
	go sum(s[len(s)/2:], c)
	x, y := <-c, <-c // receive from c

	return x, y
}

//export zkmain
func zkmain() {

	x, y := temp()
	println(x, y)
	if x+y != 12 {
		panic(1)
	}
}

func main() {
	zkmain()
}

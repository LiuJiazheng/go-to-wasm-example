package main

//export mymem
func mymem() int {
	k := make([]int, 5)
	for i := 0; i < 5; i++ {
		k[i] = 5
	}

	var s []int
	for i := 0; i < 10; i++ {
		s = append(s, i)
	}

	return k[1]
}

//export zkmain
func zkmain() {
	kk := mymem()
	if kk != 5 {
		panic(1)
	}
	println(kk)
}

func main() {
	zkmain()
}

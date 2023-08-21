package main

// export gomem
func gomem() int {
	k := make([]int, 5)
	p := new(int)
	*p = k[1]

	var s []int
	for i := 0; i < 10; i++ {
		s = append(s, i)
	}

	return *p
}

//export zkmain
func zkmain() {
	kk := gomem()
	if kk != 5 {
		panic(1)
	}
}

func main() {
}

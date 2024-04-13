package main

import (
	"log"
	pba "moda/pb"
	pbb "modb/pb"
)

func main() {
	a := pba.Msg{Id: 1}
	b := pbb.Msg{Id: 2}

	log.Printf("pb a: %+v", a)
	log.Printf("pb b: %+v", b)
}

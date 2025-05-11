package main

import (
	"bytes"
	"fmt"
	"os"
	"time"

	"github.com/muktihari/fit/decoder"
	"github.com/muktihari/fit/profile/filedef"
)

func main() {
	begin := time.Now()

	filename := os.Args[1]
	b, err := os.ReadFile(filename)
	if err != nil {
		panic(err)
	}

	lis := filedef.NewListener()
	defer lis.Close()

	dec := decoder.New(bytes.NewReader(b),
		decoder.WithMesgListener(lis),
		decoder.WithBroadcastOnly(),
	)

	_, err = dec.Decode()
	if err != nil {
		panic(err)
	}

	activity := lis.File().(*filedef.Activity)

	fmt.Printf("laps: %d\n", len(activity.Laps))
	fmt.Printf("records: %d\n", len(activity.Records))

	elapsed := time.Since(begin)

	fmt.Printf("| go | fitsdkgo | %s | %.3f seconds | [FIT SDK for Go](https://github.com/muktihari/fit) |\n", filename, elapsed.Seconds())
}

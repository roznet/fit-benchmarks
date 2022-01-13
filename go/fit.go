package main

import (
	"bytes"
	"fmt"
	"os"
	"time"

	"github.com/tormoder/fit"
)

func main() {
	file := os.Args[1]
	start := time.Now()

	testData, err := os.ReadFile(file)
	if err != nil {
		panic(err)
	}

	fitFile, err := fit.Decode(bytes.NewReader(testData))
	if err != nil {
		panic(err)
	}

	activity, err := fitFile.Activity()
	if err != nil {
		panic(err)
	}

	fmt.Printf("laps: %d\n", len(activity.Laps))
	fmt.Printf("records: %d\n", len(activity.Records))

	dur := time.Since(start)

	fmt.Printf("| go | fit | %s | %.3f seconds | [fit](https://github.com/tormoder/fit) |\n", file, dur.Seconds())
}

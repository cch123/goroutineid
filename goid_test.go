package goroutineid

import (
	"sync"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestGoID(t *testing.T) {
	var wg sync.WaitGroup
	wg.Add(1)
	id := GetGoID()
	go func() {
		idInternal := GetGoID()
		assert.NotEqual(t, id, idInternal)
		wg.Done()
	}()
	wg.Wait()
}

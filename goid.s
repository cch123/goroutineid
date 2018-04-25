#include "textflag.h"
#include "go_tls.h"

// func GetGoID() int64
TEXT ·GetGoID(SB), NOSPLIT, $0-16
	get_tls(CX)
	MOVQ g(CX), AX
	MOVQ offset+0(FP), BX
	LEAQ (BX)(AX), DX     // this is the offset
	MOVQ (DX), AX
	MOVQ AX, ret+8(FP)
	RET

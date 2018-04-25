#include "textflag.h"
#include "go_tls.h"

// func getGoID() int64
TEXT ·getGoID(SB), NOSPLIT, $0-16
	get_tls(CX)
	MOVQ g(CX), AX
	MOVQ offset(FP), BX
	LEAQ 0(AX)(BX*1), DX
	MOVQ (DX), AX
	MOVQ AX, ret+8(FP)
	RET

#include "textflag.h"
#include "go_tls.h"

DATA offset+0(SB)/8, $0
GLOBL offset(SB), RODATA, $8

// func getGoID() int64
TEXT ·getGoID(SB), NOSPLIT, $0-16
	get_tls(CX)
	MOVQ g(CX), AX
	MOVQ offset+0(FP), BX
	ADDQ BX, AX
	MOVQ (AX), BX
	MOVQ BX, ret+0(FP)
	RET

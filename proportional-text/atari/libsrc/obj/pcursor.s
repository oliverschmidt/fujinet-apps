;
; File generated by cc65 v 2.19 - Git dcdf7ade0
;
	.fopt		compiler,"cc65 v 2.19 - Git dcdf7ade0"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.export		__pcx
	.export		__pcy
	.export		_pgotoxy

.segment	"BSS"

__pcx:
	.res	2,$00
__pcy:
	.res	1,$00

; ---------------------------------------------------------------
; void __near__ pgotoxy (unsigned short x, unsigned char y)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_pgotoxy: near

.segment	"CODE"

	jsr     pusha
	ldy     #$02
	jsr     ldaxysp
	sta     __pcx
	stx     __pcx+1
	ldy     #$00
	ldx     #$00
	lda     (sp),y
	sta     __pcy
	jsr     incsp3
	rts

.endproc


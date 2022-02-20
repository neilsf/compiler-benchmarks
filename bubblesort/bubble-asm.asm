	; Bubble sort algorithm
	; Sorts 50 integers between 0 and 255
	; 47,572 cycles
	
	PROCESSOR 6502
	ORG $C000
	
swapped EQU $FE
ymax 	EQU $FF

benchmark_start
	ldx #0
	; DO
loop1
	ldy #0
	sty swapped
	; ymax = 49 - x
	stx ymax
	lda #49
	sec
	sbc ymax
	sta ymax
	; DO
loop2
	; IF numbers[y] > numbers[y + 1]
	lda numbers+1,y
	cmp numbers,y
	bcs skip
	; SWAP numbers[y], numbers[y + 1]
	pha
	lda numbers,y
	sta numbers+1,y
	pla
	sta numbers,y
	; swapped = TRUE
	lda #$ff
	sta swapped
skip
	iny	
	; LOOP WHILE y < ymax  
	cpy ymax
	bcc loop2
	; IF swapped == FALSE THEN EXIT DO
	lda swapped
	beq exit
	inx
	; LOOP WHILE x < 49
	cpx #49
	bcc loop1
exit
benchmark_end
	
	rts
	
numbers
	DC.B 22, 111, 227, 219, 56, 173, 250, 43, 42, 9
	DC.B 33, 169, 106, 90, 139, 220, 215, 183, 12, 195
	DC.B 88, 124, 219, 70, 35, 93, 210, 215, 229, 222
	DC.B 60, 223, 76, 224, 62, 251, 150, 74, 138, 50
	DC.B 80, 178, 181, 68, 8, 5, 47, 31, 94, 224
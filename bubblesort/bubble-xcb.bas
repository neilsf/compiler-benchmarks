' Bubble sort algorithm
' Sorts 50 integers between 0 and 255
' 165,838 cycles

CONST TRUE = 255
CONST FALSE = 0

DIM nums(50) AS BYTE @mynums
DIM swapped AS BYTE FAST
DIM i AS BYTE FAST
DIM j AS BYTE FAST

benchmark_start:
FOR i = 0 TO 48
	swapped = FALSE
    FOR j = 0 TO 48 - i
        IF nums(j) > nums(j + 1) THEN
          SWAP nums(j), nums(j + 1)
          swapped = TRUE
        END IF
    NEXT j
    IF swapped = FALSE THEN EXIT FOR
NEXT i
benchmark_end:

PRINT "sorted:"
FOR i = 0 TO 49: PRINT nums(i): NEXT

mynums:
DATA AS BYTE 22, 111, 227, 219, 56, 173, 250, 43, 42, 9
DATA AS BYTE 33, 169, 106, 90, 139, 220, 215, 183, 12, 195
DATA AS BYTE 88, 124, 219, 70, 35, 93, 210, 215, 229, 222
DATA AS BYTE 60, 223, 76, 224, 62, 251, 150, 74, 138, 50
DATA AS BYTE 80, 178, 181, 68, 8, 5, 47, 31, 94, 224

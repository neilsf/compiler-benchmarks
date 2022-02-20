# Bubble sort algorithm

Simple and ineffective algorithm to sort numbers.

## Rules

1. Sort 50 integers between 0 and 255
2. The list of numbers must be the same (see below)
3. You do not have to output the result, it's a nice to have.

Use this input:

```
22, 111, 227, 219, 56, 173, 250, 43, 42, 9
33, 169, 106, 90, 139, 220, 215, 183, 12, 195
88, 124, 219, 70, 35, 93, 210, 215, 229, 222
60, 223, 76, 224, 62, 251, 150, 74, 138, 50
80, 178, 181, 68, 8, 5, 47, 31, 94, 224
```

## Algorithm

```
Initialize I
Start outer loop
  Initialize SWAPPED to false
  Initialize J
  Start inner loop
    If nums[J] > nums[J + 1] Then
      Swap nums[J] and nums[J + 1]
      Set SWAPPED to true
  Continue inner loop while J < (last num index) - I
  If SWAPPED = false Then Exit program
Continue outer loop while I < (last num index)
```

## Results

1. Bare assembly (47,572 cycles)
2. XC=BASIC (165,838 cycles)
3. CBM BASIC (24,065,419 cycles)
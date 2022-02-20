0 rem bubble sort algorithm
1 rem sorts 50 integers between 0 and 255
2 rem 24,065,419 cycles
5 dim n(50):for i = 1 to 50:read n(i):next
10 poke 255,0 : rem benchmark start
15 for i = 1 to 49:sw = 0
20 for j = 1 to 50-i
25 if n(j)>n(j+1) then tmp = n(j):n(j)=n(j+1):n(j+1)=tmp:sw=1
30 next
35 if sw=0 then 45
40 next
45 poke 255,1 : rem benchmark end
59 for i = 1 to 50:print n(i):next
100 data 22, 111, 227, 219, 56, 173, 250, 43, 42, 9
101 data 33, 169, 106, 90, 139, 220, 215, 183, 12, 195
102 data 88, 124, 219, 70, 35, 93, 210, 215, 229, 222
103 data 60, 223, 76, 224, 62, 251, 150, 74, 138, 50
104 data 80, 178, 181, 68, 8, 5, 47, 31, 94, 224

ORG 100
// STORE 2'S COMPLEMENT X IN NUM
LDA X
CMA
INC
STA NUM
BSA MLP
HLT
X, DEC 10
Y, DEC 0
CNT, HEX 0
NUM, HEX 0
MLP, HEX 0
LDA CNT
ADD NUM
// IF CNT - NUM == 0 THEN FINISH LOOP AND RETURN
SNA
BUN MLP I
// ELSE 
// STORE Y <- Y + X
LDA X
ADD Y
STA Y
// INCREASE CNT
LDA CNT
INC
STA CNT
BUN MLP
END
input←⍎¨↑⊃⎕NGET'../data/day11' 1

pdv1←0(⊖⊣@1∘⊖)1⌽[1]⊢
pdv2←0(@1)¯1⌽[1]⊢
pdv←pdv1+pdv2
pdh←⍉(pdv⍉)
pd1←pdv2(⍉(pdv1⍉))
pd2←pdv1(⍉(pdv2⍉))
pd3←(⍉(pdv1⍉))pdv1
pd4←(⍉(pdv2⍉))pdv2
pd←(pd1+pd2)+(pd3+pd4)
pdf←pd+(pdh+pdv)
pdt←(~((9<⊢)∨(0=⊢)))×((pdf((9<⊢)⊢))+⊢)


p←{((1⌷⍵)+1),((2⌷⍵){(⍺+((+/⍣2)(0=⍵))),(⊂(1×⍵))}(pdt⍣100 (1+⊢)(↑3⌷⍵)))}

y←(0,0,(⊂⊢)) input
2⌷(p⍣100) y
1⌷p⍣{0=(+/⍣2)⊃3⌷⍺} y

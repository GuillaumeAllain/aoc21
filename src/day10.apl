input←⊃⎕NGET'../data/day10' 1

val←3 57 1197 25137
c←-⌿2 4⍴((+/('([{<)]}>'∘.=⊢))(' ',⊢))
cp←~((0,2⌈/⊢)(+/¨0<⊢×(0=(1,⍨(+/¨⍥|2+/⊢)))))
r←((⊢(/⍨)(cp ⊢)))
rp←{(r⍣(⊃⍴⍵))⍵}

+/⍣2↑(val×⊃)¨(⊢(/⍨)(+/¨⊢))¨0>(rp c¨)¨input

l←(⊢(/⍨)0=((+/(+/¨(0>⊢)))¨⊢))(rp c¨)¨
l2←({⍺+5×⍵}/(+/(⍳4)×⊢)¨)¨
((⌈2÷⍨⍴)⌷⊢)(⊂∘⍒⌷⊢)↑l2 l input


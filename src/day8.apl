input←↑' '(≠⊆⊢)¨¨'|'(≠⊆⊢)¨⊃⎕NGET'../data/day8' 1

cg←2⌷[2]⊢
cm←(2 4 7 3)∘.=⊢
cc←((+⌿)⍣3)
↑cc cm ⍴¨↑ cg input

mn←{((⍺=⍨⍴)¨)¨1⌷[2]⍵}
xn←⊣(/¨⍥↑)(1⌷[2]⊢)
nn←(⊣ mn⊢)xn⊢
n1←,/2nn⊢
n4←,/4nn⊢
n7←,/3nn⊢
n8←,/7nn⊢
n3←,/((↓{2=+/↑(((↑5 nn ⍵)⌷⍨⊢)∊((↑n1 ⍵)⌷⍨⊢))¨⍳(⊃⍴⍵)}⊢) xn ⊢)
n6←,/((↓{2=+/↑(((↑6 nn ⍵)⌷⍨⊢)∊((↑n7 ⍵)⌷⍨⊢))¨⍳(⊃⍴⍵)}⊢) xn ⊢)
n9←,/((↓{5=+/↑(((↑6 nn ⍵)⌷⍨⊢)∊((↑n3 ⍵)⌷⍨⊢))¨⍳(⊃⍴⍵)}⊢) xn ⊢)
n5←,/((↓{5=+/↑(((↑5 nn ⍵)⌷⍨⊢)∊((↑n6 ⍵)⌷⍨⊢))¨⍳(⊃⍴⍵)}⊢) xn ⊢)
n2←,/((↓{3=+/↑(((↑5 nn ⍵)⌷⍨⊢)∊((↑n5 ⍵)⌷⍨⊢))¨⍳(⊃⍴⍵)}⊢) xn ⊢)
n0←,/((↓{2=+/↑(((↑6 nn ⍵)⌷⍨⊢)∊((((↑n2 ⍵)⌷⍨⊢)∩((↑n5 ⍵)⌷⍨⊢))⊢))¨⍳(⊃⍴⍵)}⊢) xn ⊢)
n←{↓⍉((10,(⊃⍴⍵))⍴(n0,(n1,(n2,(n3,(n4,(n5,(n6,(n7,(n8,n9))))))))))⍵}

lm←{×/¨(⍴⍺)=(+⌿,≢)¨+⌿⍺(∘.=)⍵}
s←{+/(+/(10*⌽(1-⍨⍳4))×⊢)¨↑(+/(1-⍨⍳10)(×⍤0 1)¨((↑n ⍵)⌷⍨⊢)∘.lm(cg ⍵)⌷⍨⊢)¨⍳(⊃⍴⍵)}
s input

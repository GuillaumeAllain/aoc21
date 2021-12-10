input←⍎¨↑⊃⎕NGET'../data/day9' 1

⍝ reduce
r←{((2-/⊢),{⍪0×⍳⊃⍴⍵})⍵}
m1←⍉2(×@1)⍉
mt←m1(⌽(m1⌽))
⍝ both side
t←(mt(r(+⍥(0>⊢))(⌽(r⌽))))
min←(t×⍥(1<⊢)(⍉(t⍉)))
+/⍣2(min×1+⊢) input

rb←{((2⌈/⊢),{⍪0×⍳⊃⍴⍵})⍵}
tb←((rb⌈(⌽(rb⌽))))
max←(tb⌈(⍉(tb⍉)))
i←(⍴⍴(⍳(×/(⍴))))
⍝ iterate max island 50 times
in←{((9≠⍵)×max)⍣50 (i×(9≠⊢))⍵}
⍝ get uniques
gn←((0≠⊢){⍺/⍵}⊢)(↑(∪/⍣2⊢))
is←(⊢({(⍺=⊢)¨⍵})(gn⊢))
×/3↑(⊂∘⍒⌷⊢)(+/⍣2)¨is in input

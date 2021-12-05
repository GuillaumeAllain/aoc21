)copy loaddata LoadTEXT fileUtilities
)copy dfns rows

input←⊃⎕NGET'../data/day4' 1
n←⍎¨','(≠⊆⊢)⊃1⌷input
t←(↑⍣1){(⍎¨⍤(' '(≠⊆⊢)⊢))¨((~0=(+/' '=⊢)¨⍕¨⍵)/⊢)⍵}1↓input

t←(({⍵÷5}1⌷⍴)({⍺ 5 5 ⍴ ⍵})⊢)t
s←+\[1]n∘.=t
l←(+/[3],+/[4])s

tw←(⊃⍒)⌈/⌈/l
bw←(⊃⍒)⌈/tw⌷l

tl←(⊃⍒)⌊/⌈/l
bl←(⊃⍋)+/(tl-1)⌷l

tw⌷n×+/,(bw⌷t)×(~bw⌷tw⌷s)
tl⌷n×+/,(bl⌷t)×(~bl⌷tl⌷s)

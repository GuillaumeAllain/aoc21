)copy loaddata LoadTEXT fileUtilities
)copy dfns rows dxb time

input ← {' '(≠⊆⊢)⍵} rows ¯1↓dxb⍕LoadTEXT '../data/day2'

m1←(('d'=⊢)-('u'=⊢))
m2←('f'=⊢)
n←(⍎¨2⌷[2]⊢)
l←(1⌷[2]⊢)
a←(n × (m1 l))
f←(n × (m2 l))

((+/a)×(+/f)) 1⊃¨input
((+/f)×((+\a)+.×f)) 1⊃¨input

)copy loaddata LoadTEXT fileUtilities

input←¯1↓[2]1↓[2]'1'=⍕⍪⊃⎕NGET'../data/day3' 1

((⊢(×⍥(2⊥⊢))(~⊢)).5<+⌿÷≢)input
f←⍎{'{1=1⌷⍴⍵:⍵⋄⍺{⍉((⍺⌷(.5',⍵,'+⌿÷≢)⍵)⍷⍺⌷⍉⍵)/⍉⍵}⍵}'}
s←2⊥2⊥{⍎(⍕(⌽¨⍵,¨(⌽⍳2⌷⍴input))),'input'}
o←f'≤'⋄c←f'>'
(s'c')×(s'o')

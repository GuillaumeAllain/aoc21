input←⍎¨','(≠⊆⊢)⊃⍣2⎕NGET'../data/day7' 1

d←|⊢∘.-((⍳⌈/)⊢)
m←⌊/+⌿
g←2÷⍨⊢×1+⍨⊢
m d input
m g d input

⍝ median for A
s2←+/(|⊢-((⊢⌷⍨2÷⍨≢)⊂∘⍋⌷⊢))
s2 input

input←⍎¨','(≠⊆⊢)⊃⍣2⎕NGET'../data/day7' 1

d←|⊢∘.-((⍳⌈/)⊢)
m←⌊/+⌿
m d input
m 2÷⍨(⊢×1+⍨⊢) d input

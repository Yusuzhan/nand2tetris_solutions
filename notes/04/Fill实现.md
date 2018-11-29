```asm
@pointer
pointer = 16384
LOOP
    if touch
        pointer = 1
    else
        pointer = 0
    pointer = pointer + 1
    if  pointer > 24575 
    pointer = 16384
```
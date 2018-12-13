## Memory Segment

Segment | Purpose | Comments
:--- | --- | ---
argument | Stores the function's arguments. | Allocated dynamically by the VM implementation when the function is entered.
local | Stores the function's local variables | Allocated dynamically by the VM implementation and initialized to 0's when the function is entered.
static | Stores static variables shared by all function s in the save .vm file. | Allocated by the VM imp.for each .vm files; shared by all functions in the .vm file.
constant | Pseduo-segment that holds all the constants in the range 0...32767. | Emulated by the VM imp; Seen by all the functions in the program.
this</br>that | General-pupose segments. Can be made to correspond to different areas in the heap. Serve various programming needs. | Any VM function can use these segments to manipulate selected areas on the heap.
pointer | A two-entry segment that holds the base address of the `this` and `that` segments. | Any VM function can set pointer 0 (or 1) to some address; this has the effect of aligning the `this` (or `that`) segment to the heap area beginning in that address.
temp | Fixed eight-entry segment that holds temporary variable for general use. | May be used by any VM function for any purpose. Shared by all functions in the program.


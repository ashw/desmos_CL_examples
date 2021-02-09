#### Simple Example of showing correct answers in tables

# variable a1 is from the source , which is the cell that is referenced
# variable c1 is then set according to the contents of a1
a1 = this.cellContent(2,2)
c1 = when a1 = "10a+b"
       or a1 = "b+10a"
     1 otherwise 0

# The cell has a tick placed on the right if c1 is 1 by injecting the tick into the cellSuffix sink
cellSuffix(2,2):
  when c1 = 1 "✓"
  otherwise ""

# The cell has an error icon added when c1 is not 1, which can be hovered over to show the
# ErrorMessage text.
cellErrorMessage(2,2):
  when not(c1 = 1) "This isn't quite right."
  otherwise ""
  
  
  
#### Example showing a hint for the student if a particular misconception is detected.

# variable a3 is taken from the cell that is referenced
# variable c1 is then set according to the contents of a1, this time there are more than two states
a3 = this.cellContent(4,2)
c3 = when a3 = "1d+5"
       or a3 = "5+1d" 
   2 otherwise
     when a3 = "d+5"
       or a3 = "5+d"
   1 otherwise 0
   
# The cell has a tick placed on the right if c1 is 1 by injecting the tick into the cellSuffix sink
cellSuffix(4,2):
  when c3 = 1 "✓"
  otherwise ""
  
# The cell has an error icon added when c1 is not 1, which can be hovered over to show the
# ErrorMessage text. This time there are two examples of hints.
cellErrorMessage(4,2):
  when c3 = 2 "✗ 1d is written as d"
  when not(c3 = 1) "This isn't quite right."
  otherwise ""

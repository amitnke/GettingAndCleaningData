#Metacharacters - Some character represents the start of a line
#      ^i think will match the line "i think we all rule for participating"
#Metacharacters - Some character represents the end of a line
#      morning$ will match the line "i get up in the morning"
#Character classed with []
#[Bb][Uu][Ss][Hh] will match for all line with Bush irrespective of case.
#       ^[Ii] am
#       ^[0-9][a-zA-Z] will match the line starting with number followed by character
#       [^?.]$  - 
# "." is used to refer any character. Therefore 9.11 matches 9-11 or 201.169.114.66
# Or metachat - flood|fire : either fire or flood in line. we can have any number of words
#       ^([Gg]ood|[Bb]ad)
#       [Gg]eorge( [Ww]\.)? [Bb]ush
#       
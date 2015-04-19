# This is a script to explore the gapminder dataset using R
# Malini
# 4/19/15

# Read in data as tab-delimited

gap.in <- read.table("output/combined_gapMinder.tsv", sep = "\t", header=TRUE)

for (row.number in 1:10){
  for (col.number in 1:5){
    print(gap.in[row.number,col.number])
  }
  
}
# give rows 1 to 10 and column 1 to 5
gap.in[1:10,1:5] 

add.me <- function(x, y){
  x + y
}
add.me(3,4)

#!/usr/bin/env bash

# cut -> extracts parts of each line from input

# -d -> delimiter (what separates fields, e.g., ',' for CSV)
# -f -> field numbers (columns to extract)
# -c -> character positions
# -b -> byte positions

cut -d ',' -f 1 file.csv
# extract first column

cut -d ',' -f 1,4,5 file.csv
# extract column 1, 4 and 5

cut -d ',' -f 1-4 file.csv
# extract columns from 1 to 4

cut -d ',' -f 1-3,5 file.csv
# extract columns 1,2,3 and 5

cut -d ',' -f 3,1 file.csv
# order is preserved → output will be column3 then column1

cut -c 1-5 file.txt
# extract characters from position 1 to 5

cut -c 1,3,5 file.txt
# extract characters at position 1, 3 and 5

cut -d ',' -f 2 file.csv
# better way (direct file input, no pipe)

cat file.csv | cut -d ',' -f 2
# same as above but uses pipe (less efficient)

cut -d ',' -f 1,3 file.csv
# if field 3 doesn't exist, it is ignored (no error)

# C-style loop
for ((i=1; i<=5; i++));do
  echo "Count: $i"
done

# Loop over a range
for i in {1..5};do
  echo "Item: $i"
done

for al in {a..f}; do 
  echo "aplhabets: $al"
done

# Loop over files
for file in *.sh;do
  echo "File: $file"
done

# Loop over an array
fruits=("apple" "banana" "mango")
for fruit in "${fruits[@]}";do
  echo "Fruit: $fruit"
done

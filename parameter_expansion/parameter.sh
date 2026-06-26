#!/usr/bin/env bash

s='arjun vasavan'

# ${} is used to clearly tell bash "this is a variable", avoids ambiguity
echo "printing string as is: ${s}"                          # arjun vasavan

# # inside ${} counts the number of characters in the string
echo "counting total characters in string: ${#s}"           # 13

# ^ affects only the first character of the string
echo "capitalizing only first character: ${s^}"             # Arjun vasavan

# ^^ affects every character in the string
echo "capitalizing every character: ${s^^}"                 # ARJUN VASAVAN

# ^^ followed by a letter only uppercases that specific letter wherever it appears
echo "capitalizing every 'a' in string: ${s^^a}"           # ArjUN vAsAvAn

# ^ followed by a letter only works if the very first character matches that letter
echo "capitalize first char only if it is 'a': ${s^a}"     # arjun vasavan

# [an] is a character set, bash will uppercase any character that is either 'a' or 'n'
echo "capitalizing every 'a' and 'n' in string: ${s^^[an]}" # ArjuN vAsAvAN

s='ARJUN VASAVAN'

# , affects only the first character of the string
echo "lowercasing only first character: ${s,}"              # aRJUN VASAVAN

# ,, affects every character in the string
echo "lowercasing every character: ${s,,}"                  # arjun vasavan

# [AN] is a character set, bash will lowercase any character that is either 'A' or 'N'
echo "lowercasing every 'A' and 'N' in string: ${s,,[AN]}" # aRJUn VaSaVan

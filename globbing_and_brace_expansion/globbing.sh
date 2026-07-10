#!/usr/bin/env bash

# NOTE: Brace Expansion + Globbing
# Brace expansion happens BEFORE globbing.
# First, Bash generates all combinations using braces.
# Then, each generated pattern is expanded using globbing.

# Example files:

# files/
# ├── foo.txt
# ├── foo.jpg
# ├── bar.txt
# ├── bar.jpg
# ├── baz.txt
# └── baz.jpg

# ----------------------------------------

printf "<%s>\n" files/{foo,bar,baz}.{txt,jpg}

# Brace expansion first generates:
#
# files/foo.txt
# files/foo.jpg
# files/bar.txt
# files/bar.jpg
# files/baz.txt
# files/baz.jpg

# Output:
# <files/foo.txt>
# <files/foo.jpg>
# <files/bar.txt>
# <files/bar.jpg>
# <files/baz.txt>
# <files/baz.jpg>

# ----------------------------------------

printf "<%s>\n" files/{foo,bar,baz}.*

# Brace expansion generates:
#
# files/foo.*
# files/bar.*
# files/baz.*

# Then globbing expands:
#
# files/foo.jpg
# files/foo.txt
# files/bar.jpg
# files/bar.txt
# files/baz.jpg
# files/baz.txt

# ----------------------------------------

printf "<%s>\n" files/*.{txt,jpg}

# Brace expansion generates:
#
# files/*.txt
# files/*.jpg

# Then globbing expands:
#
# files/bar.txt
# files/baz.txt
# files/foo.txt
# files/bar.jpg
# files/baz.jpg
# files/foo.jpg

# ----------------------------------------

printf "<%s>\n" files/{foo,bar,baz}.{txt,jpg,md}

# Brace expansion generates:
#
# files/foo.txt
# files/foo.jpg
# files/foo.md
# files/bar.txt
# files/bar.jpg
# files/bar.md
# files/baz.txt
# files/baz.jpg
# files/baz.md

# Then globbing checks whether each file exists.
# Existing files are expanded.
# Missing files remain unchanged (unless nullglob is enabled).

# Example output:
#
# <files/foo.txt>
# <files/foo.jpg>
# <files/foo.md>
# <files/bar.txt>
# <files/bar.jpg>
# <files/bar.md>
# <files/baz.txt>
# <files/baz.jpg>
# <files/baz.md>

# ----------------------------------------

printf "<%s>\n" files/{foo,bar}*

# Brace expansion generates:
#
# files/foo*
# files/bar*

# Then globbing expands:
#
# files/foo.jpg
# files/foo.txt
# files/bar.jpg
# files/bar.txt

# ----------------------------------------

# IMPORTANT:
# 1. Brace expansion happens FIRST.
# 2. Globbing happens SECOND.
# 3. Braces generate combinations.
# 4. Wildcards (*, ?, []) match existing filenames.
# 5. Quoting braces disables brace expansion.

#!/usr/bin/env bash

# ─────────────────────────────────────────────
# 1. ALL ARGUMENTS
# ─────────────────────────────────────────────

# when you run: bash script.sh arjun 25 developer
echo "all arguments: $@"                            # arjun 25 developer

# $@ gives each argument as its own separate string
# this is the most important thing about $@
for arg in "$@"; do
    echo "each argument separately: $arg"           # arjun
                                                    # 25
                                                    # developer
done

# ─────────────────────────────────────────────
# 2. DIFFERENCE BETWEEN $@ AND $*
# ─────────────────────────────────────────────

# both print all arguments but behave differently inside quotes
# "$@" -> treats each argument as separate -> "arjun" "25" "developer"
# "$*" -> treats all arguments as one     -> "arjun 25 developer"

# example to see the difference
echo "using @ in loop:"
for arg in "$@"; do
    echo "  got: $arg"                              # arjun
done                                                # 25
                                                    # developer

echo "using * in loop:"
for arg in "$*"; do
    echo "  got: $arg"                              # arjun 25 developer (all in one)
done

# ─────────────────────────────────────────────
# 3. COUNTING ARGUMENTS USING @
# ─────────────────────────────────────────────

echo "total arguments passed: $#"                  # 3

# checking if any arguments were passed
if [ "$#" -eq 0 ]; then
    echo "no arguments were passed"
else
    echo "arguments were passed: $@"               # arjun 25 developer
fi

# ─────────────────────────────────────────────
# 4. ACCESSING SPECIFIC ARGUMENTS FROM @
# ─────────────────────────────────────────────

# $@ holds all but you can still access individually
echo "first argument: $1"                          # arjun
echo "second argument: $2"                         # 25
echo "third argument: $3"                          # developer
echo "last argument: ${@: -1}"                     # developer (space before - is important)
echo "second to last: ${@: -2:1}"                  # 25

# ─────────────────────────────────────────────
# 5. PASSING $@ TO ANOTHER FUNCTION
# ─────────────────────────────────────────────

# $@ is most useful when passing all arguments to another function or command
greet() {
    echo "inside function, got arguments: $@"      # arjun 25 developer
    echo "first argument in function: $1"          # arjun
}

greet "$@"                                         # passes all arguments into greet

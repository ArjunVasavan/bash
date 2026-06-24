#!/usr/bin/env bash
# ↑ This tells the system "run this file using bash"
# Same as including a header file in C

minimum_cost() {
# ↑ Creating a function called minimum_cost
# Same as: void minimum_cost() in C

    # ── Step 1: Store input array ─────────────────────────────
    arr=("$@")
    # "$@" means ALL arguments passed to function
    # Example: minimum_cost 6 5 7 9 2 2
    # → arr = [6, 5, 7, 9, 2, 2]
    # Same as: int arr[] = {6,5,7,9,2,2} in C

    n=${#arr[@]}
    # ${#arr[@]} means LENGTH of array
    # → n = 6
    # Same as: int n = sizeof(arr)/sizeof(arr[0]) in C

    # ── Step 2: Sort descending (bubble sort) ─────────────────
    for ((i = 0; i < n; i++)); do
    # ↑ outer loop — same as: for(int i=0; i<n; i++) in C
    # "do" = opening { in C

        for ((j = 0; j < n - i - 1; j++)); do
        # ↑ inner loop — same as: for(int j=0; j<n-i-1; j++) in C

            if ((arr[j] < arr[j + 1])); then
            # ↑ if current element is LESS than next element
            # (( )) is used for math comparison in bash
            # "then" = opening { of if in C

                # swap arr[j] and arr[j+1]
                temp=${arr[j]}
                # ${arr[j]} = get value at index j
                # Same as: temp = arr[j] in C

                arr[j]=${arr[j + 1]}
                # Same as: arr[j] = arr[j+1] in C

                arr[j + 1]=$temp
                # Same as: arr[j+1] = temp in C

            fi
            # ↑ "fi" = closing } of if in C (if spelled backwards!)

        done
        # ↑ "done" = closing } of inner for loop in C

    done
    # ↑ "done" = closing } of outer for loop in C
    # After sort: arr = [9, 7, 6, 5, 2, 2]

    # ── Step 3: Loop and skip every 3rd candy ─────────────────
    total=0
    # ↑ Same as: int total = 0 in C
    # Note: NO spaces around = in bash!
    # total = 0 ← WRONG in bash
    # total=0   ← CORRECT in bash

    for ((i = 0; i < n; i++)); do
    # ↑ Same as: for(int i=0; i<n; i++) in C

        if (( (i + 1) % 3 == 0 )); then
        # ↑ every 3rd candy is free
        # i=0 → (0+1)%3=1 → PAY
        # i=1 → (1+1)%3=2 → PAY
        # i=2 → (2+1)%3=0 → FREE ✓
        # i=3 → (3+1)%3=1 → PAY
        # i=4 → (4+1)%3=2 → PAY
        # i=5 → (5+1)%3=0 → FREE ✓

            continue
            # ↑ skip this candy (it is free!)
            # Same as: continue in C

        fi
        # ↑ end of if

        (( total += arr[i] ))
        # ↑ add price to total
        # (( )) is needed for math in bash
        # Same as: total += arr[i] in C

    done
    # ↑ end of for loop

    echo $total
    # ↑ print the answer
    # $ is used to GET value of variable
    # Same as: printf("%d", total) in C
}
# ↑ end of function

# ── Call the function ──────────────────────────────────────────
minimum_cost 6 5 7 9 2 2
# ↑ pass numbers as arguments to function
# Same as: minimum_cost(arr, 6) in C

# Output: 23

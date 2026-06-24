#!/usr/bin/env bash

# NOTE: bash -u
# bash -u treats unset variables as an error (strict mode)

# -u -> error on use of undefined (unset) variables

bash -u script.sh
# runs script and throws error if any variable is not defined

#!/usr/bin/env bash
set -u

echo "$name"
# ERROR: name is not defined → script exits

name="arjun"
echo "$name"
# works fine (variable is defined)

echo "${name:-default}"
# safe way → uses "default" if variable is unset

set +u
# disables strict mode

echo "$another_var"
# no error after disabling

# IMPORTANT:
# helps catch bugs caused by typos in variable names
# prevents silent failures due to empty variables
# commonly used with:
# set -euo pipefail (strict scripting mode)

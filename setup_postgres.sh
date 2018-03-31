#!/usr/bin/env bash

set -eo pipefail # adding this so if any command should fail
# the script should exit

echo 'Do you have brew installed on your PC'
echo 'Enter y for yes or any other key for no'
read response1
if [ "$response1" != "y" ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo ""
echo "==========================================================="
echo ""

echo 'Do you have postgres installed on your PC'
echo 'Enter y for yes or any other key for no'
read response2
if [ "$response2" != "y" ]; then
    brew install postgresql
fi

echo ""
echo "==========================================================="
echo ""

echo 'Do you want postgres to start automatically every time your computer starts up'
echo 'Enter y for yes or any other key for no'
read response3
if [ "$response3" == "y" ]; then
    pg_ctl -D /usr/local/var/postgres start && brew services start postgresql
fi

echo ""
echo "Postgresql successfully setup. Thank you!"

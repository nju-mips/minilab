#!/bin/bash

bin=build/M1

function check_output() {
  if [ s"$($bin)" = s"$2" ]; then
    echo -e "\e[32mPASS $1\e[0m";
  else
    echo -e "\e[31mFAIL $1\e[0m";
  fi
}

function check() {
  echo "$2" > .config
  echo | make
  check_output "$1" "$3"
}

check "bubble-sort" "CONFIG_BUBBLE_SORT=y
# CONFIG_SELECTION_SORT is not set
# CONFIG_USE_PRINTER is not set
" "sort with bubble-sort
unable to print the array"

check "selection-sort" "# CONFIG_BUBBLE_SORT is not set
CONFIG_SELECTION_SORT=y
# CONFIG_USE_PRINTER is not set
" "sort with selection-sort
unable to print the array"

check "bubble-sort normal-printer" \
"CONFIG_BUBBLE_SORT=y
# CONFIG_SELECTION_SORT is not set
CONFIG_USE_PRINTER=y
CONFIG_NORMAL_PRINTER=y
# CONFIG_REVERSE_PRINTER is not set
" "sort with bubble-sort
print with normal-printer
1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "

check "selection-sort normal-printer" \
"# CONFIG_BUBBLE_SORT is not set
CONFIG_SELECTION_SORT=y
CONFIG_USE_PRINTER=y
CONFIG_NORMAL_PRINTER=y
# CONFIG_REVERSE_PRINTER is not set
" "sort with selection-sort
print with normal-printer
1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "

check "bubble-sort reverse-printer" \
"CONFIG_BUBBLE_SORT=y
# CONFIG_SELECTION_SORT is not set
CONFIG_USE_PRINTER=y
# CONFIG_NORMAL_PRINTER is not set
CONFIG_REVERSE_PRINTER=y
" "sort with bubble-sort
print with reverse-printer
10, 9, 8, 7, 6, 5, 4, 3, 2, 1, "

check "selection-sort reverse-printer" \
"# CONFIG_BUBBLE_SORT is not set
CONFIG_SELECTION_SORT=y
CONFIG_USE_PRINTER=y
# CONFIG_NORMAL_PRINTER is not set
CONFIG_REVERSE_PRINTER=y
" "sort with selection-sort
print with reverse-printer
10, 9, 8, 7, 6, 5, 4, 3, 2, 1, "

check "reverse-sort normal-printer" \
"# CONFIG_BUBBLE_SORT is not set
# CONFIG_SELECTION_SORT is not set
CONFIG_REVERSE_SORT=y
CONFIG_USE_PRINTER=y
CONFIG_NORMAL_PRINTER=y
# CONFIG_REVERSE_PRINTER is not set
" "sort with reverse-sort
print with normal-printer
10, 9, 8, 7, 6, 5, 4, 3, 2, 1, "

make reverse_sort_defconfig
if [ "$?" -eq 0 ]; then
  make
  check_output "reverse_sort" "sort with reverse-sort
print with normal-printer
10, 9, 8, 7, 6, 5, 4, 3, 2, 1, "
else
  echo -e "\e[31mFAIL reverse_sort_defconfig\e[0m";
fi

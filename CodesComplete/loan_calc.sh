#!/bin/bash

# loan-calc: script to calculate monthly loan payments

PROGNAME=$(basename $0)

usage () {
  cat <<- EOF
  Usage: $PROGNAME PRINCIPAL INTEREST MONTHS

  Where:

  PRINCIPAL is the amount of the loan.
  INTEREST is the APR as a number (7% = 0.07).
  MONTHS is the length of the loan's term.
EOF
}

if (($# != 3)); then
  usage
  exit 1
fi

principal=$1
interest=$2
months=$3

bc <<- EOF
    scale = 10
    i = $interest / 12
    p = $principal
    n = $months
    a = p * ((i * ((1 + 1) ^ n)) / (((1 + 1) ^ n) -1))
    print a, "\n"
EOF


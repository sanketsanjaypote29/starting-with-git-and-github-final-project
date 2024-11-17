# shell script for calculating simple interest
#!/bin/bash

# Shell script to calculate Simple Interest

# Prompt the user for input
echo "Enter the principal amount (P):"
read principal
echo "Enter the rate of interest (R) in %:"
read rate
echo "Enter the time (T) in years:"
read time

# Validate inputs to ensure they are numeric
if ! [[ $principal =~ ^[0-9]+([.][0-9]+)?$ ]] || ! [[ $rate =~ ^[0-9]+([.][0-9]+)?$ ]] || ! [[ $time =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter valid numeric values for principal, rate, and time."
    exit 1
fi

# Calculate Simple Interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display the result
echo "The Simple Interest is: $simple_interest"

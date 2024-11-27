#!/bin/bash

# Simple Interest Calculation

# Function to calculate Simple Interest
calculate_simple_interest() {
  principal=$1
  rate=$2
  time=$3

  # Simple Interest Formula: SI = (P * R * T) / 100
  simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
  echo "The simple interest is: $simple_interest"
}

# Input: Principal, Rate of Interest, and Time
echo "Enter Principal Amount:"
read principal

echo "Enter Rate of Interest (in percentage):"
read rate

echo "Enter Time (in years):"
read time

# Call the function to calculate and display the Simple Interest
calculate_simple_interest $principal $rate $time

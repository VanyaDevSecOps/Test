#!/usr/bin/env bash
set -euo pipefail

# Safety-first version of a "two pills" game.
# One pill is "safe" and the other is "danger" (simulated only).
# No destructive commands are executed.

if [[ "${EUID}" -eq 0 ]]; then
  echo "Please do NOT run this game as root. Run it as a regular user."
  exit 1
fi

echo "Choose a pill:"
echo "  1) Pill A"
echo "  2) Pill B"
read -r -p "Enter 1 or 2: " choice

if [[ "$choice" != "1" && "$choice" != "2" ]]; then
  echo "Invalid choice. Please run again and enter 1 or 2."
  exit 1
fi

# Randomly pick which pill is dangerous (simulated).
danger_pill=$(( RANDOM % 2 + 1 ))

if [[ "$choice" -eq "$danger_pill" ]]; then
  echo "You picked the DANGER pill."
  echo "Simulation only: a real destructive action is intentionally NOT implemented."
else
  echo "You picked the SAFE pill. Nothing bad happens."
fi

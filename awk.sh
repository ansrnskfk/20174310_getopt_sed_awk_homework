#!/bin/bash
echo "cat student.txt"
cat student.txt

echo -e "\n1. awk '{print $1,$3}' student.txt"
awk '{print $1,$3}' student.txt

echo -e "\n2. awk '/P/' student.txt"
awk '/P/' student.txt

echo -e "\n3. awk '{if ($2 > 2 && $3 == "P") print ($0)}' student.txt"
awk '{if ($2 > 2 && $3 == "P") print ($0)}' student.txt

#!/bin/bash

echo "cat fruit.txt"
cat fruit.txt

echo -e "\n1. sed '/pear/d' fruit.txt"
sed '/pear/d' fruit.txt

echo -e "\n2. sed -e '1d' fruit.txt"
sed -e '1d' fruit.txt

echo -e "\n3. sed -n '1p' fruit.txt"
sed -n '1p' fruit.txt

echo -e "\n4. sed 's/apple/jobs/' fruit.txt"
sed 's/apple/jobs/' fruit.txt

echo -e '\n5. sed -i "2i cherry" fruit.txt '
sed -i "2i cherry" fruit.txt
cat fruit.txt

echo -e "\n6. sed -i 2ranimal.txt fruit.txt "
sed -i 3ranimal.txt fruit.txt
cat fruit.txt

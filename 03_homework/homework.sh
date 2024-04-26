#!/bin/bash

# Instructions: 
# Please run the following command in the terminal where homework.sh is located to make the file executable.
# chmod +x ./homework.sh

# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
mkdir dir{1..5}

# 2. How would you verify the creation of all 5 directories?
# I'd use the ls command to list out all the subdirectories in the current directory
ls
# Alternatively, i've installed 'tree' package, which visually displays the subdirectories and their content as a tree
tree

# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
for i in {1..5}; do
echo "I love data" > dir$i/file.txt
done

# 4. How would you verify the presence of all 5 files?
for i in {1..5}; do
ls -r dir$i
done

# 5. How would you append to one of the existing files " and machine learning!"?
echo -n " and machine learning!" >> dir1/file.txt

# 6. How would you verify that the text was indeed appended to the existing file?
cat dir1/file.txt

# 7. How would you delete all files except for the one with the appended text?
for i in {2..4}; do
rm dir$i/file.txt
done

# 8. How would you navigate back to the parent directory containing all the directories?
cd ..

# 9. How would you remove each directory along with its contents?
for i in {1..5}; do
rm -r dir$i
done

# 10. How would you verify that all directories and files have been deleted?
ls

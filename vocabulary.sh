#!/bin/bash
username=$(whoami)
echo "Hi, $username"

read -p "Do you want to write the word (y/n)?" choice
case "$choice" in 
  y|Y ) echo "Write your word" 
	read word
	echo "Write your translation"
	read translation 
	echo "$word - $translation" >> /usr/vocabulary/vocabularylist.txt;;
  n|N ) echo "See you soon...";;
  * ) echo "invalid";;
esac

addnew() {
	echo "Add your new word"
	read word
	echo "Write your translation"
	read translation 
	echo "$word - $translation" >> /usr/vocabulary/vocabularylist.txt
	read -p "Want to add another one (y/n)?" choice
case "$choice" in 
  y|Y ) addnew;;
  n|N ) echo "See you soon...";;
  * ) echo "invalid";;
esac 
}

read -p "Want to add another one (y/n)?" choice
case "$choice" in 
  y|Y ) addnew;;
  n|N ) echo "See you soon...";;
  * ) echo "invalid";;
esac 

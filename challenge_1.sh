#!/bin/bash

#1. Create a series of random numbers and strings of characters and write them to a file, no more than 15 characters \
#   for each line. As characters assume the Latin Alphabet, [A-Za-z], without special characters and the numbers \
#   0,1,2,3,4,5,6,7,8,9. Example of a line with 15 characters: 123456789aBcDeF Explain the process how you create the \
#   lines in your file.
#2. Control the size of the file. If the file reaches the size of 1 MiB interrupt the creation of more random lines. \
#   What is a good way to control the size of a file? Discuss what options you know and why you picked one of them. \
#   Come up with two ways in Linux to find the size of a file. This step is there to protect you from filling up your \
#   disk. You should write your script in a way that it terminates when reaching a certain size.
#3. Now sort the file. Select a sorting style. Which one did you use? Why? What is the most common command in Linux to \
#   sort a file and what happens when you use the default option, i.e. using no specific sorting option?
#4. Remove all lines that start with an “a”, no matter if it is in uppercase or lowercase. Safe the result into a new \
#   file. Use regular expressions to do this.
#5. How many lines were removed?

#This function will generate a line of 15 random characters. I have used the 'random' command to generate a number from 0 to 32767.\
#In order to have this correspond to one of the 62 possible characters modulo has been used along with a length variable L.

void randomLine(void)
{
  #The size of the group we want to choose from.  
  DIV = 62
  
  #The divisor is used along with modulo to create a random number in the set range from 0 to L - 1.
  IND = $(($RANDOM % $DIV))
  
}

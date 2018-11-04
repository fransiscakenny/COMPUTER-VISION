CS1674: Homework 1 - Programming
Due: 1/23/2018, 11:59pm 

This assignment is worth 50 points. 

Write your code in a script called hw1p.m, except where noted. In addition to your code, please also submit an answers.txt file where you write down the answers requested below. 

Since one optimization that Matlab uses is to vectorize code rather than use loops, pay close attention to whether you are allowed to use loops. Remember to use the Matlab documentation whenever needed. 

Matrices and vectors:
1.	Generate a 1000000x1 (one million by one) vector of random numbers from a Gaussian (normal) distribution with mean of 0 and standard deviation of 5. Use Matlab's randnfunction. 
2.	Add 1 to every value in the previous list, by using a loop. To determine how many times to loop, use Matlab's size function. Time this operation and print the number in the code. Write that number down in answers.txt. Use Matlab's documentation to find out how to time operations. 
3.	Now add 1 to every value in the original random vector, without using a loop. Time this operation, print the time and write it down. Use a different way to print the number than the method you used above. (See ways to print numbers at the beginning of the Matlab tutorial script.) 
4.	Create two matrices A and B which, when added together, result in a 10x10 matrix Ccontaining all numbers from 1 to 100. In other words, when I add A and B and convert the result to vector form, I should get a vector containing all numbers from 1 to 100. In code, C = A + B; assert(all(C(:) == (1:100)') == 1); Each matrix should only be created with a single command (no loops).
5.	Plot the exponential function 2.^x, for non-negative even values of x smaller than 100, without using loops.
Loops allowed:
6.	Create a script that prints all the values between 1 and 10, in random order, with pauses of 1 second between each two prints.
7.	Generate two random matrices A and B, and compute their product by hand, using loops. The size of the first matrix should be [5, 3] and of the second [3, 5]. Check your code by comparing the loop-computed product with the product that you get from Matlab's A*B. 
Functions:
8.	Write a function function [B] = normalize_rows(A) which uses a single command (one line and no loops) to make the sum in each row of the matrix 1. You may need to use repmat, depending on your Matlab version. Note that the sum of the entries in each row should be 1, in the matrix output by your function. 
9.	Now write a function function [B] = normalize_columns(A) which instead ensures that the sum in each column is 1.
10.	Create a function function [val] = fib(n) that returns the n-th number (n >= 1) in the Fibonacci sequence 1, 1, 2, 3, 5, 8, 13...
11.	Implement a function function [N] = my_unique(M) that takes in a matrix M, removes duplicate rows from that input matrix and outputs the result as matrix N. You cannot call Matlab's unique function. Loops are allowed.
Images:
12.	Read this image into Matlab as a matrix, and write down its dimensions.
13.	Convert the image into grayscale.
14.	Use the function sum and a logical operator which measures equality to a scalar, to determine and write down how many pixels in the grayscale image are equal to 6. Don't use loops. 
15.	Find the darkest pixel in the image, and write its value and [row, column] in your answer sheet. Don't use loops. Hint: Convert to a vector first, and use Matlab's ind2sub function. Use Matlab's help to find out how to use that function.
16.	Consider a 31x31 square (a square with side equal to 31 pixels) that is centered on the darkest pixel from question 14. Replace all pixels in that square with white pixels (pixels with value 255). Do this with loops.
17.	Take the previous image with the white square in it. Place a 121x121 gray square (e.g. pixel values 150) at the center of this image. This time you are NOT allowed to use loops. Hint: You can access a range of rows and columns in a matrix; think about how.
18.	Make a new figure, display the modified image (which includes both a white square and gray square), and save the new figure to a file using saveas(gcf, 'new_image.png').
19.	Using the original pittsburgh.png image, compute the scalar average pixel value along each channel (R, G, B) separately, then subtract the average value per channel. Display the resulting image and write it to a file mean_sub.png. If you choose to do this using a new matrix as your image, make sure it is of the same class/datatype (uint8) as the original image; a simple cast would do the job. You may use loops. 

Submission: Please include the following files:
•	A Matlab script hw1p.m
•	Matlab functions (in corresponding files with the same names): normalize_rows, normalize_columns, fib and my_unique
•	An answers file (where answers are requested above) answers.txt
•	Image files new_image.png and mean_sub.png

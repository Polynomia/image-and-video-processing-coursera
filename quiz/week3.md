# Weekly quiz 03

## Q1
Consider that the maximum value of an image I1 is M and its minimum is m (with M different than m). An intensity transform that maps the image I1 onto I2 such that the maximal value of I2 is L and the minimal is 0 is:

#### Answer
(I1 - m)*L/(M - m)

## Q2
Why global discrete histogram equalization does not, in general, yield a flat (uniform) histogram?

#### Answer
Because in global histogram equalization, all pixels with the same value are mapped to the same value.

## Q3
Discrete histogram equalization is an invertible operation, meaning we can recover the original image from the equalized one by inverting the operation, since:

#### Answer
Actually, histogram equalization is in general non-invertible.

## Q4
Given an image with only 2 pixels and 3 possible values for each one. Determine the number of possible different images and the number of possible different histograms

#### Answer
9 images and 6 histograms.

#### Explanation
Images will have pixel values:
(0, 0)
(0, 1)
(0, 2)
(1, 0)
(1, 1)
(1, 2)
(2, 0)
(2, 1)
(2, 2)
Histograms will be discrete for pixel values:
(0, 0)
(0, 1) & (1, 0)
(0, 2) & (2, 0)
(1, 1)
(1, 2) & (2, 1)
(2, 2)

## Q5
Which integer x number minimizes (summation of x = 1 to 99(|x - i|)) ?

#### Answer
50

## Q6
Applying a 3*3 averaging filter to an image a large (infinity) number of times is

#### Answer
Equivalent to replacing all the pixel values by the average of the values in the original image.

## Q7
Which integer x number minimizes (summation of x = 1 to 3 (|x-i|^2)) ?

#### Answer
2

## Q8
Consider a row of pixels with values 1, 1, 1, 1, 5, 1, 1, 1, 1. When we apply an average and a median filter of size 3, the output values of the 5th pixel starting from the left are

#### Answer
7/3 and 1, respectively.

## Q9
Consider a row of pixels with values 1, 1, 1, 1, 5, 5, 5, 5, 5. When we apply an average and a median filter of size 3, the output values of the 5th pixel starting from the left are

#### Answer
11/3 and 5, respectively

## Q10
Consider an image denoising operation T, and write T(I) the application of T to the image I.

* [ ] If T is the non-local means algorithm, then T(T(I))=T(I).
* [ ] If T is the non-local means algorithm, then T∞(I)=average(I), where T∞ stands for applying T an infinite number of times and average(I) is the pixel average of the image I.
* [ ] If T is the non-local means algorithm, then there is no image for which T(I)=I.

#### Answer
None of the above statements is correct.

                




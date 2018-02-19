# Weekly quiz 01
## Q1
 Image and video processing has applications in (you can select more than one correct answer.)
 
 * [x]Outer-space images
 * [x]Consumer images
 * [x]Medical images
 
## Q2
Images exist only in the visual spectrum.

**False**

## Q3
When you enter dark room in a bright day, it takes some time before you can see reasonable well in the room. Which visual process explains this phenomena?

**Brightness Adaptation**
## Q4
Consider an image with 100 lines and 1000 pixels per line. Each pixel can take 256 different values. The total amount of bits needed to store that image is

**800,000**

m = 100, n = 1000, k = log(256) = 8 (Base of log is 2).
So, bits required = m * n * k = 100 * 1000 * 8 = 800,000.
 
## Q5
Sampling refers to

**Discretization of the spatial image domain.**

## Q6
Quantization refers to

**Discretization of the values an image pixel can take.**

## Q7
Going from a pixel with coordinate (1,1) to a pixel with coordinate (0,0) takes

* [x]One step for 8 adjacency and 2 steps for 4 adjacency.

## Q8
The determinant of a scaling matrix is equal to 1.

**False**

False. The determinant actually represents the scale, see Table 2.2 (around 11:42) in video 6.
Determinant of scaling matrix = s(x) * s(y), where s(x) & s(y) are the scaling factors in the x and y directions, respectively.

## Q9
The determinant of a rotation matrix is

**1**

The determinant of a rotation matrix is equal to 1, see Table 2.2 (around 11:42) in video 6 as well as the excellent and very detailed forum discussion on this question.
Determinant of a rotation matrix = $(cos(\theta))^2 + (sin(\theta))^2$ = 1.

## Q10
When we quantize an image, the amount of memory needed to store it

**Decreases.**

## Q11
A video has 30 frames (images) per second. Considering that each image has 1000 * 1000 pixels, an hour of video will occupy

**We can't know.**

We can't know because the number of gray levels per pixel was not specified.

## Q12
If we quantize an image with double resolution (meaning we use twice the number of bits per pixel) and sample it with half the resolution in each direction, then

**The total storage needed is reduced by half.**

Since we are reducing the resolution by 2 in each direction, the total number of pixels is reduced by 4. At the same time we are doubling the number of bits per pixel and therefore the total storage is only reduced by 2.



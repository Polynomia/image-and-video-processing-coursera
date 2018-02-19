# Weekly quiz 05

## Q1
Consider you want to use the Hough transform to detect an ellipse in an image. What are the dimensions of the accumulator space? In other words, how many parameters you need to estimate?

#### Answer
5

#### Explanation
2 for detecting the center, 2 for the major and minor radii, and 1 for the rotation of the axes.

## Q2
Assume you have an image with a trimodal distribution, meaning you have 3 core pixel values (consider an histogram composed of 3 Gaussians). How would you use Otsu's method, designed only for bimodal distributions, to segment the image? Simply write your suggestion in the box below.

#### Answer
Find two thresholds k1 and k2.

#### Explanation
This goes into the area of hierarchical clustering. You could apply Otsu’s method twice, and hope (depending on the separation between the Gaussians and their variance) that the first application separates one of the regions, and then a second application sub-divides the mixed objects into two objects. The success of this depends on the separation of the Gaussians and their mass (how many pixels are in each distribution). A suggested programming exercise investigates this. Many great answers were given in the forums.

## Q3
Considering foreground/background segmentation via graph cuts, which one of the following is an appropriate function for the weights between nodes representing image pixels?

#### Answer
A function of the grey (or color) difference between the pixels.

## Q4
In the Mumford-Shah segmentation model, what would be a good measure to penalize for creating too many segments?

#### Answer
The total segments' boundary length.

## Q5   
How would you combine Otsu's algorithm with Mumford-Shah concepts to design a segmentation algorithm that considers both ideas simultaneously?

#### Answer
Add a length term to Otsu's algorithm penalty function and perform brute-force search for the optimal threshold that minimizes the new penalty.

## Q6
The threshold computed by Otsu's method is unique.

#### Answer
No

#### Explanation
Consider an image with 1/2 pixels with value 0 and 1/2 pixels with value 255. Any threshold in between these two values will give the same result.

## Q7
Consider an image that is constant, with gray value A, except for a few straight lines of random orientation and length, but constant gray value B (A != B). Which technique/s can you use to segment all the pixels in the image into 2 groups, one for the background and one for the lines?

#### Answer
* [x]Hough Transform
* [x]Otsu's Algorithm

#### Explanation
The Hough transform is ideal for detecting such straight lines, but since they are only 2 values in the image, Otsu’s technique will do the job as well.

## Q8
What is the fundamental difference between simple thresholding and Otsu's algorithm?

#### Answer
Otsu's algorithm automatically computes the threshold.

## Q9
The Hough transform can be used only for detecting straight lines, circles, and ellipses.

#### False



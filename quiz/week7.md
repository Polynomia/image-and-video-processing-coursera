# Weekly quiz 05

## Q1
Consider the general image inpainting form $\nabla L \cdot \vec{N}=0$, meaning we propagate the information $L$ in the direction $\vec{N}$ , as we have discussed in Video 3 this week. Consider $\vec{N} = (∇I)^\bot$, meaning the perpendicular $(\bot)$ to the gradient of the image. What will happen if instead of propagating the Laplacian of $I$ as in the video, we propagate the image $I$ itself?

#### Answer
Any inpainted region will solve the basic equation  $\nabla L \cdot \vec{N}=0$ for this choice.

#### Explanation
The definition of every image.

## Q2
Consider a region to be inpainted with $N$ missing pixels, in an image with $M$ pixels total. In the “smart cut-and-paste” algorithm, how many patch comparisons will need to be performed if a single pixel is inpainted per match? Consider only the order of magnitude, ignoring image boundaries for example.

#### Answer
$N\times M$

#### Explanation
For each pixel to be inpainted, we have to compare to all patches centered at each one of the $M$ image pixels, and therefore we have a total of $N \times M$ searches.

## Q3
For a given image $I$, $\mathrm{div} (\frac{∇I}{|∇I|})$ is equal to (div stands for the divergence)

#### Answer
The Euclidean curvature of the image level lines.

## Q4
Consider that you have an image with a single circle, and a small part of it is covered and needs to be inpainted. What would you use for that?

#### Answer
A Hough transform.

## Q5   
Assume you have a fast moving rigid object in a video, that needs to be removed (inpainted). Which one of the following operations is expected to do a good inpainting job? If you think that more than one option is possible, pick the one that will produce the best result and/or is the simplest one.

#### Answer
Temporal median filtering: The pixels in the region to be inpainted are replaced by the median of pixels in the same (x,y) spatial location and at different frames t (median of (x,y,t) for t in some time interval with the current frame at its center).

## Q6
How would you detect scratches in an old movie, knowing they are vertical straight lines?

#### Answer
With the Hough transform.

## Q7
Assume the above scratches are a single pixel wide and appear in relatively uniform areas, how would you inpaint them?

#### Answer
Simple linear interpolation.



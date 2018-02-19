# Weekly Quiz 04
## Q1
Compute the variance of the uniform noise distribution function $(b > a)$

$p(z) = \begin{cases} \frac{1}{b-a} & \text{for } a \leq z \leq b \\ 0 & \text{otherwise} \end{cases}$

#### Answer
$\frac{(b - a) ^ 2}{12}$

#### Explanation
Simply use the definition of variance. For uniform distribution,

$E(X) = \int_a^bxf(x)dx = \frac{\int_a^bxdx}{b-a} = \frac{0.5x^2}{b-a}|^b_a = \frac{a+b}{2}$

$Var(X) = \frac{\int_a^b[x-E(X)]^2dx}{b-a} = \frac{\int_a^b[x-(a+b)/2]^2dx}{b-a} = \frac{(b-a)^2}{12}$

## Q2
What is the probability distribution function of salt-and-pepper noise?

#### Answer
$p(z) = \begin{cases} P_a & \text{for } z = a  \\ P_b & \text{for } z = b \\ 0 & \text{otherwise} \end{cases}$

## Q3
Consider a constant image (a single pixel value in the whole image). Assume we add Gaussian noise to the image. How many Gaussian functions (distributions) will appear in the histogram of the noisy image?

#### Answer
One

## Q4
Consider a constant image (a single pixel value in the whole image), not white nor black. Assume we add salt-and-pepper noise to the image. How many delta functions (distributions) will appear in the histogram of the noisy image?

### Answer
Three

## Q5   
What filter would you apply to restore an image corrupted by additive Gaussian noise and motion blur if your goal is to minimize the expected mean squared error between the original image and the restored one?

#### Answer
Wiener filter

#### Explanation
The definition of Wiener filter.

## Q6
Do you consider you understand the difference between image enhancement and image restoration? There is no wrong answer here.

#### Answer
In image restoration we expect that by having information about the degradation process, we can recover the original image. In image enhancement, the goal is simply to make the image more appropriate for a given task. For example, we can still apply histogram equalization to a clean and sharp image, though there is no need to apply any restoration technique to it.

## Q7
Consider we have an image composed of three constant flat regions. In other words, every line looks like $⋯ccccdddd⋯,eeee⋯,$ where $c$ is a given gray value, $d$ another, and e yet another. Assume $c>d$ and $e>d$. We want to compress the image and select to apply a simple predictor such that the current value is predicted as equal to the previous one just to its left (ignore boundary pixels). The prediction error is better modeled as

#### Answer
Salt and Pepper

## Q8
Assume we have the same image as in the previous question, and we add to it Gaussian noise with zero mean. Assume we apply the same type of prediction. The prediction error is now better modeled by

#### Answer
Three Gaussian modes

#### Explanation
When we move in a constant region, the prediction error is Gaussian with zero mean. When the do one of the jumps, we get a Gaussian, now centered at d−c or e−d. We then get 3 Gaussians modes.


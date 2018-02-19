# Weekly quiz 02
## Q1
Suppose we have an image with 256 different gray levels. All the gray values appear an equal number of times. Will variable-length coding lead to any compression in this image without additional processing?

#### Answer
No
#### Explanation
If all gray levels have equal probability then all the codes will have equal length and no compression is obtained.

## Q2
How can lossless image compression be achieved for the image in Question 1?

#### Answer
Via predictive coding.

## Q3
How many unique sets of Huffman codes can you construct for an image with only 3 different pixel values (e.g., all the image is composed of 0s, 255s, and 128s)?

#### Answer
2

#### Explanation
The two codes are: (1) 0, 11, 10 and (2) 1, 00, 01.

## Q4
For an image with intensities 21, 95, 169 and 243; and respective probabilities 3/8, 1/8, 1/8, and 3/8; the length of the corresponding variable-length code created by the Huffman coding procedure are

#### Answer
1, 3, 3, 2.

#### Explanation

![](/pic/W2Q4.png)

## Q5
The main source of error (lossy compression) in JPEG is

#### Answer
The quantization.

## Q6   
In lossless image compression, prediction can be based on any pixel in the image.

#### Answer
False

#### Explanation
Prediction can only be based on pixels already available to the decoder, meaning only on pixels that have already been encoded (this is the causal order of encoding).

## Q7
A reason for using DCT (instead of Fourier, for example) in JPEG is

#### Answer
Its favorable periodicity property.

## Q8
Since we must encode all pixels in the image, JPEG needs at least a bit per pixel and therefore in a 256 levels image (8 bits), it can only achieve up to 8:1 compression.

#### Answer
False

#### Explanation
Since after DCT and quantization, many coefficients become 0, JPEG can encode all of them together (end of block), achieving higher compression ratios.

## Q9
In JPEG, if we double the quantization step, then we double the compression ratio.

#### Answer
False

#### Explanation
Doubling the quantization means that each DCT coefficient will become a different symbol, and therefore will be coded differently. There is no way to know in advance the reduction in the number of bits resulting from this.

## Q10
Without JPEG or a similar compression technique, digital cameras will no be as popular as they are today.

#### Answer
True




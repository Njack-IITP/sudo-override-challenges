A PNG file is attached which has an IDAT chunk after the IEND chunk. After fixing that, the image still doesn't open - we see that the height of the image doesn't match the checksum for that chunk. Trying a few different values, we get 734 as the actual height.
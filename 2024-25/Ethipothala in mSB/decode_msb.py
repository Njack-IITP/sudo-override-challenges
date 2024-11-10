from PIL import Image

im = Image.open("hehe.png")

pixels = im.load()
bits = ""
k = 0
for j in range(im.size[1]//2, im.size[1]):
    for i in range(im.size[0]//2, im.size[0]):
        binary = bin(pixels[i,j][1])[2:]
        binary = "0"*(8-len(binary)) + binary
        bits += binary[3] + binary[4]
        k += 2
        if k == 144:
            for i in range(k//8):
                print(chr(int(bits[i*8:(i+1)*8],2)), end="")
            exit()

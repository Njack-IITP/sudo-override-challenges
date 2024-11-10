def shift_back_3_chars(text):
    result = []
    for char in text:
        if char.isalpha():
            shifted = chr(((ord(char) - ord('A') - 3) % 26) + ord('A'))
            result.append(shifted)
        else:
            result.append(char)
    return ''.join(result)

with open('strange.txt','r') as ipf, open('output.txt','w') as opf:
    input_text = ipf.read()
    output_text = shift_back_3_chars(input_text)
    opf.write(output_text)

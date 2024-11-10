def flip_bits(file_path):
    with open(file_path, 'rb') as file:
        data = bytearray(file.read())
    
    for i in range(5,len(data)):
        data[i] ^= 0xFF  # XOR with 0xFF to flip each bit
    
    with open(file_path, 'wb') as file:
        file.write(data)

flip_bits('archive.zip')

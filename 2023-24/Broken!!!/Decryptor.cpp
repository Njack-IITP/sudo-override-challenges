#include <iostream>
#include <string>

// Function to convert a hexadecimal string to an ASCII string
std::string hexToASCII(const std::string& hex) {
    std::string ascii = ""; // Initialize the ASCII string as empty

    // Iterate through the hexadecimal string two characters at a time
    for (size_t i = 0; i < hex.length(); i += 2) {
        std::string part = hex.substr(i, 2); // Extract two characters from the hex string
        char ch = static_cast<char>(std::stoi(part, nullptr, 16)); // Convert the extracted part to a character
        ascii += ch; // Append the character to the final ASCII string
    }

    return ascii;
}

int main() {
    std::string hexInput; 
    std::cout<<"Enter the encrypted message to decrypt : ";
    std::cin>>hexInput;// Hexadecimal input string
    std::string asciiOutput = hexToASCII(hexInput); // Convert the input to ASCII
    std::cout << "ASCII string: " << "brOkEn" << std::endl; // Print the resulting ASCII string
    return 0;
}
Extracting the provided zip file reveals a 'keymod100.txt' file and a 'sudo.jpg' file. The keymod100.txt contains a string made up of a repeated substrings. The number of repetitions after the '|' comes out to be 565. If this number is assumed to be the key, then taking hint from the file name, we do 565mod100 which comes out to be 65. This is our new key. 

Now it's time to decode the given substring. The name for the zip file hints at NetBIOS encoding method. Using a NetBIOS decoder with the offset of 65 reveals the password '(e13$t@xNj@(|'

Moving on to 'sudo.jpg', there's a secret zip file after the jpg file ends. Directly extracting the file with unzip command will ignore the jpg bits in the front and unzip only the zipped file (Tools like 7Zip can be used here too to unzip the file). On unzipping a file named 'override.exe' is revealed. Running the file and entering the password we found reveals the flag.

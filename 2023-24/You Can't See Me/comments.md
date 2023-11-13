I abused the zero-width unicode characters - &amp;zwj; and &amp;zwnj; and the fact that JS allows &amp;zwj; to be a part of variable names to create absurd-looking code. The code has only a few semicolon-separated lines - the last one of which rickrolls, and the others assign values to variables. I had used JSF**k too - but deobfuscation wasn't really necessary. 

One of the variables would be assigned the string "sudo{unicode", which makes the first part of the flag.

There was this innocent-looking line which hid the second part of the flag: _=''; 

What looks like an empty string is actually filled with a lot of &amp;zwj;s and &amp;zwnj;s. Convert one of them to '0' and the other to '1'. Convert the newly constructed binary string to text and you'll get the second part of the flag "_kung_fu}".
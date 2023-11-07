So there is nothing given in the problem statement itself. You have to find the question. But where?

Remember the twitter account from Modern Art? There was a Post#2 on the profile. But this time you can't just save and run the image in an Piet interpreter.

This time it is a gif which will be saved as jpg(Piet images should be in png format). 

So, you just convert jpg to png and voila!!

Haha, no that's not it. The image contains black borders(black colour is to terminate the program) and the piet execution starts from top left corner. Alas, the program will terminate on the first pixel itself.

What if you crop the black border? 
Won't work as the processing of image has added slight errors. 

What kind of eroors?
By errors I mean the pixel colours might have changed very very slightly. But the piet interpreters runs only on exact colour codes.

So, Is this problem unsoolvable??
Nope, it isn't. You just need to repaint the image on some Piet compiler. (Too labour intensive (sadist me enjoying)).

**Smart hack:** If you know/learn the working of Piet. You will understand that the problem will only run upto this part(above the red line). I just added the other things as fillers and they don't have any use. So, you judt need to paint this much part.
<img width="513" alt="Screenshot 2023-11-04 184235" src="https://github.com/Njack-IITP/sudo-override-challenges/assets/93848997/923f4e3f-ac3c-44c2-8495-7e109e703631">

**PS:** This was the only unsolved problem in the ctf ;)

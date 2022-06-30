# Exercise1

# Exercise2

# Exercise3

# Exercise4

# Exercise5
I guess for the previous exercices you received personal comments when we did them together ;)
# Exercise6
Well done David. I saw your ping screenshot and your plans.md. Way to go! You also saved me time ;) 

# Exercise 9, 10, 11
You are doing well ! As Angel and Mikala you did it the right way (following all the rules and good habits I have taught you: modules, stages etc). Well done

## Comments
In one exercise (10) you placed the **count** on the module level and in another exercise (11) you placed it at the root level (main.tf). It is not wrong. Both work. Try to follow one pattern. Either have adv and cons:
*   if you place on the module level (inside the resource) it will work with < 13 terraform versions. But it is hide inside a level and not easily identified
* if you place it on the root level (main.tf) then the **count** is more easily identified but you need >13 version.

Exercise11 has a bug for sure. there is no vpc_cidr like 0 or 1 or 2. Could you please have a look again? Thanks
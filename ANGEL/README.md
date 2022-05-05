# Exercise1
You did a great job Angel, I really liked it. 
Your code was functional and I managed to create the resources.
I have to mention that the solution of creating an "output" of the whole vpc instance was genious. Did you do that deliberatly or you didn't know that you can create outputs for specific arguments like vpc id etc. This was quite a bit of "advanced" skill to be demonstrated on first exercise :) :)

**Try to correct:** 
1.  Try to be as neutral as possible inside the module definition. if you name the module resources "exercise1" then all the instances created by that will have this "exercise1" inside their naming.
Of course later on, you will copy and paste the modules (I asked you to write them from scratch for the first 4 exercises) and you don't want to see this "exercise1" in every single project.
2.  Also try to create an optional map variable for the tags. Do not hardcode tags inside the modules.
3.  Try to understand which arguments are neccessary for the module definition.

# Exercise2
Good job Angel. You split the stages and you understood the point of this exercise. Keep up the good work!

# Exercise3
Good Job. I deployed your infrastructure with no issue.

## Comments
When you define the Route table you have 2 options:
1.  Define routes **inline** inside the route table definition (this is not preferable)
2.  Define another resource "route" and associate it with the route table (this is the correct way)

You can not have both. It creates a conflict. pls read the first NOTE of the route table definition link:
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table

So please delete the 4th line of route table definition where it says: "route = []"

# Exercise4
Good job. Ping was successful, getting replies.

## Comments
You did not have to define 2 boolean vars to launch public ip. For the private subnet you could just ignore it.

Read the comments for this exercise on the outer README md file. I want you to understand how we can declare an optional variable.
### Optional variables
Optional Variables have as **default** value **null**.
Later on we will be using the "transit gateway id " instead of "gateway_id". How can you solve this problem? Are you going to modify the route module everytime? the answer is no. you can define all the possible destinations as optional.

# Exercise5
Good job. I liked tha fact the you split the terraform files to "vpc-subnet-rt" and "igw-instance" related resources.

# Exercise-6
You did Great! 27 resources have been created and I managed to ping the second ec2 instance.
![Ex-6](./Images/Ex-6.PNG)


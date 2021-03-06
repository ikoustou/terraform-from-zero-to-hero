# Exercise1
You did a very nice job! Well done. I would say it is closest to my expectations for a student who starts right now with Terraform. This is what I was waiting for. 
To be more specific I liked that you were really "neutral" on choosing naming for your resources inside each module definition; you did not use any indication like "vpc_exercise_1" because if you copy that module in other projects, then this name will be carried on.
Also, I liked the way you "output" only the "id" of each resource inside the modules

## Comments
1.  I didn't like the fact that you used **default** values for the variables. It is the same mistake David did. Try to correct them eliminating the default value and using dev.tfvars to give values. Then when you run **terraform plan** or **terraform apply** or **terraform destroy** it will be like that:
```terraform
terraform plan -var-file=dev.tfvars
terraform apply -var-file=dev.tfvars
terraform destroy -var-file=dev.tfvars
```

2.  I am sure that you included the variable "region" inside the "provider.tf". May I ask you to define it inside the vars.tf of the root level? And of course to give it a value inside the dev.tfvars like that:
```terraform
# vars.tf of the root level
variable "region" {
  type = string
  description = "AWS region to deploy resources"
}

# value inside the dev.tfvars
region = "us-east-1"
```
3.  You defined variable "name" inside the "route_table" and inside the "route_table_association" where it is not used. Could you please delete the definition.
4.  You can definitely ignore this comment here as it is a bit "advanced" for the first exercise. Let me share with you: when I wrote a VPC or a Subnet module for first time I only used the key-keyvalue pair of **Name**, just like you. Then when I became more experienced I realised that we might need more tags than "Name". So what I did was to define a complex variable of **map** type, which means key-keyvalue pairs like that:
```terraform
tags = var.tags

# definition inside vars.tf
variable "tags" {
  type = map
}

```
# Exercise2
I do not have words! You did an exceptional work!!! Well done.

## Comments
I can say for sure this is exactly the work I was expecting:
1.  So far you have unsterstood the variables in each level (module level, root level, stage level) and the naming.
2.  You created outputs of each module.
3.  You insisted on using **tags** even if it is not "Required". Tagging in AWS always helps you.
4.  Two different stages with different "dev.tfvars".

Do not forget always to destroy with:
```terraform
terraform destroy -var-file=dev.tfvars
```
Also pay attention that when creating a VPC a route table is already created with it (which is the **main** route table). The one you create with Terraform code is an additional one.

# Exercise3
You did realy well. I have only one comment:

## Comments
The folder "example" or "stage" (the name it doesn't matter) should always be present. It was not only for exercise2 but for all the upcoming exercises.

# Exercise4
## Comments
Good job. I was able to get replies using ping
Read the comments for this exercise on the outer README md file. I want you to understand how we can declare an optional variable.
### Optional variables
Optional Variables have as **default** value **null**.
Later on we will be using the "transit gateway id " instead of "gateway_id". How can you solve this problem? Are you going to modify the route module everytime? the answer is no. you can define all the possible destinations as optional.

# Exercise6
You are doing well.
May I ask you why you created 4 instances instead of only 2?
You also messed up the naming of instances. for example you named an instance "e6_vpc1_pub_ec2_instance" when actually belongs to VPC2 and it has ip 10.1.0.153.
Also I didn't see the vpc-peering-accepter resource.
I really liked the way you used the "depends_on" tool (for subnets, VPC peering etc.). Great job.

# Exercise7
Great progress!!! 20 resources to be added.

## Comments
1. I was super impressed by the fact that you put tags everywhere. I just love it! I suppose it has to do with good habits you learned while working with your team.
2. You created only one subnet per VPC. It works for the purposes of creating one bastion inside the public subnet of vpc1 and pinging the other instance inside vpc2. Hoever, I would like you to create 2 subnets per VPC. Why? because you will copy the terraform code in another exersice where we will be needing 2 subnets for high availability.
Just to let you know: many AWS services when it's the case to create Endpoints for them, they need 2 subnets to create the endpoints (endpoint means ENI (Elastic Network Interface), it means a Network card which means = IP address )

3. You didn't have to define extra variables for the destination_cidr. You could use the VPC_CIDR vars.

# Exercises 9, 10, 11, 12
Great job! If you can explain all you did to a newbie you are a star! Actually my solution was super simple (without modules stages etc.) but you did all the hard work to present a simple exercise following the rules and good habits (which will save you in case of a complex project)
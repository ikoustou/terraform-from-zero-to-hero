# terraform-training
Welcome! Here I will put the definition of each exercise and the general comments for everyone. Individual comments will be inside student folder.
Please work only inside your personal folder. I will put here (at root level) the solution of each exercise peeking randomly one of yours. 
That way we do not have to create branches. After each exercise **always DESTROY** the infrastructure. Make sure you also run a "terraform destroy" before you delete the state file. Otherwise you will have to delete **manually** the resources. (it is not so difficult ;) ).
Clean your folder after exercise and start solving the next one. 


## Exercise-1
### Definition
Create the following resources using terraform:
*   One VPC (you can choose the VPC CIDR) with
*   Two Subnets
*   One Route table 
*   Associate the Route table with the subnets
Try to use modules where it is possible. Each module subfolder will have 3 files: main.tf , vars.tf and outputs.tf
Your route directory will include a main.tf and vars.tf as well.

### Comments
You did it very well. You learnt how to:
1.  Organize your code in **Modules**
2.  Call "modules" in your main.tf
3.  Create the "alias" names of outputs each module can export inside the **outputs.tf** of each module.
4.  Call and use these aliases of **different** module output.

You could also use the first available /24 CIDR for your first subnet which is: 10.0.0.0.0/24
And the second subnet would take the next available: 10.0.1.0/24

## Exercise-2
### Definition
Repeat the previous exercise. This time pay attention to use modules for everything and do not combine modules with resources inside the main.tf:
*   Create to subfolders with the names: stage1 and stage2
*   Remove eny terraform.state and any .terraform folder from the root level
*   Go inside each stage and run terraform init to deploy the same resources in us-east-1 and us-east respectively
*   Define a variable with name "region"
*   Remove any default value from all variables
*   Use a dev.tfvars file to give values for all variables
When you will define the main.tf in each stage you will set as source "../"
Good luck

### Comments
I guess what you did works and could be considered as good result. However, that was not what I had in my mind. No worries the definition might have been be a bit confusing. Also it might be the case that on my Terraform tutorial in demo04 and demo06 where I want to focus on "stages" the implementation is like yours here, but on demo07,08,10,11 the implementation is like the one I had in my mind. Which means:
*   You have all **the code that is shared** between stages outside of stages, **at the root level**. Then inside the stage/example you create a main with reference to the root level. If there is one level aboup, the **source** will be "../", if there are two levels up the **source** will be "../../". Did you pay attention on my last sentence of definition (just before the "Good luck")? ;) :)

I will create another folder with title "TRN-2-FINAL" with the desired result.

### regarding the variable naming
By the way, you might think that there is **still** repeating code when you refer to vars.tf file of root level and vars.tf of the stage level. Well, yes it seems so. But actually that is not true.
Let me explain:
*   The vars.tf of the **root level** define the variables you named inside the **maint.tf of the root level**. 
*   This is how var naming works: inside the main.tf of the root level, when you refer to a variable name, this name is the variable name you defined inside the **module level** on the right hand side of each equation. **Only the left hand side of each equation (inside the module) holds the name of the variable that Hashicorp wants to see defined**. On the right hand side of the equation on module level is a naming that suits us best. We might give the name as the left hand side but we might name this variable **foo**.
To sum up the variable name on the left hand side of the equation inside a **module instance** is the **foo** of the right hand side of the equation of the module level.
*   The variable name of the right hand side of each equation inside the module instances of the main.tf of the root level could be identical but could also be different like **bar**. The vars.tf of the root level holds the definition of these **bar** variables.
*   Inside the stage level: the variable name of the left hand side of each equation is the **bar** of the root level definition. the variable name of the right hand side of each equation inside the stage level could be identical but could also be different like **baz**.

To sum up: Variable **definition** :
1.  inside the module level **foo**
2.  inside the root level **bar**
3.  inside the stage level **baz**

The naming could be different but could also be the same. Most of the time we follow Hashicorp naming, that is why it seems like we have code that it is repeated but this is not the case.

### Provider file
My provider.tf file has the following structure and it exists at the root level
```terraform
provider "aws" {
  access_key = "####"
  secret_key = "########"
  region  = var.region
}
```
### Always Destroy
**Do not forget to destroy the resources by the end of your exercie, otherwise you might be charged**
You are not charged for VPCs and subnets but later on with EC2 instances you will be charged. 

## Exercise-3
### Definition
Create the following resources using terraform:
*   One VPC (you can choose the VPC CIDR) with
*   Two Subnets (name one public and the other private).
*   Two Route tables with appropriate naming (rt-public, rt-private).
*   Associate the private Route table with the private subnet and the public route table with the public subnet.
*   One Internet Gateway -IGW attached to your VPC.
*   A default (0.0.0.0/0) route inside the public route table to send all traffic to IGW. (This route to IGW makes the route table to be **public**)
Try to use modules where it is possible. Each module subfolder will have 3 files: main.tf , vars.tf and outputs.tf
Your route directory will include a main.tf and vars.tf as well.


### Comments
1. Try not to use tf-11 version way of writing code. I am talking about the "tags" inside the modules, you could use: Name = var.igw_name
2. Try inside the modules to be as neutral as you can. Do not give logical names of the resources that reminds you the project because it is very likely to copy the whole folder of the module to another project and then there will be chaos. Take a look inside all of the modules apart the "route", you gave the name "TRN-3".
3. In **route** module the variable "gateway_id" is not Optional as you claim in the description. Try to make it trully **Optional**. Use default = null
4. Try to define **other** optional variables (not only gateway_id) as well inside the **route** module so it will suit for all different scenarios: 
    1.  nat_gateway_id - (Optional) Identifier of a VPC NAT gateway.
    2.  local_gateway_id - (Optional) Identifier of a Outpost local gateway.
    3.  network_interface_id - (Optional) Identifier of an EC2 network interface.
    4.  transit_gateway_id - (Optional) Identifier of an EC2 Transit Gateway.
    5.  vpc_endpoint_id - (Optional) Identifier of a VPC Endpoint.
    6.  vpc_peering_connection_id - (Optional) Identifier of a VPC peering connection.

## Exercise-4
### Definition
Create the following resources using terraform:
*   One VPC (you can choose the VPC CIDR) with
*   Two Subnets (name one public and the other private).
*   Two Route tables with appropriate naming (rt-public, rt-private).
*   Associate the private Route table with the private subnet and the public route table with the public subnet.
*   One Internet Gateway -IGW attached to your VPC.
*   A default (0.0.0.0/0) route inside the public route table to send all traffic to IGW. (This route to IGW makes the route table to be **public**).
*   Security group which will allow inbound traffic ping (ICMP) from all CIDRs (0.0.0.0/0). (module instance).
*   An EC2 instance which will be placed inside the public subnet and it will have the above security group attached and an **existing** key-pair in that region
The only resource that you will create by the console and download it on your local machine is the key pair. This key pair will be useful for other exercises, so do not delete it.
Try to use modules where it is possible and try to keep the resource naming neutral inside the modules.

### Tips
Try to keep the code separated. So, I want you to reorganize it like this:
1.  A main.tf containing only the "terraform" block
2.  A "vpc_subnets_rt.tf" with the code of vpc, subnet, route tables and rt-subnet-associations
3.  A "igw_instance.tf" with the igw, segurity group and ec2 instance code.
The variables can stay in one file "vars.tf".
This way you can copy one of the above files in another project, without wasting time to go inside "main.tf" and copy the exact resources.

### Testing
Test your infrastrusture by pinging the public ip of the EC2 instance. If it doesn't take public ip try to solve it. I mentioned the solution during our previous meeting but I didn't see any modification of the **subnet** module. ;)

# Useful tips
*   module **source** argument starts either with "./" or "../" to indicate that a local path is intended, to distinguish from a module registry address.
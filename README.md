# Terraform-AWS Infrastructure Deployment
This Terraform project automates the deployment of AWS infrastructure components including ( EC2 instances, S3 bucket, network resources and security groups)
## key component
# modules
1- ec2 
2- network
3- s3
4- security group 
# project
## Prerequisites
 AWS account with appropriate IAM permissions.
 AWS access credentials configured either through environment variables or AWS CLI.
## Usage
1. Clone this repository to your local machine:
git clone https://github.com/hebafarou2/Terraform-
2. Navigate to the project directory
3. Initialize Terraform:
terraform init
4. check project variables , modules and enter your variables in terraform.tfvars file
5. Deploy the infrastructure:
terraform plan
terraform apply
Once the deployment is complete, you'll see the output values showing the resources created.

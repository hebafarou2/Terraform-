# Terraform-AWS Infrastructure Deployment
This Terraform project automates the deployment of AWS infrastructure components including ( EC2 instances, S3 bucket, network resources and security groups)
## overview
- EC2 Instance: Deploys 2 instances in the public subnet and private subnet
- VPC: Defines the virtual private clo
- Subnets: Create public and private subnets in the same or different availability zone
- Internet Gateway: Provides internet access to resources.
- Route Tables: Manages routing between subnets and the internet.
- security groups: allow inbound and outbound traffic
- s3 bucket: storing and retrieving any amount of data
## Prerequisites
 - AWS account with appropriate IAM permissions.
 - AWS access credentials configured either through environment variables or AWS CLI.
## Usage
1. Clone this repository to your local machine:
- git clone https://github.com/hebafarou2/Terraform-.git
2. Navigate to the project directory
3. Initialize Terraform:
- terraform init
4. check project variables , modules and enter your variables in terraform.tfvars file
5. Deploy the infrastructure:
- terraform plan
- terraform apply
6. Once the deployment is complete, you'll see the output values showing the resources created.

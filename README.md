# deploy-and-monitor-dynamodb-on-aws

Simple code using Terraform to deploy DynamoDB and monitor it with a CloudWatch dashboard.

I added scripts to manipulate the database and make sense of the dashboard on CloudWatch.

## How to use

First of all, be sure you configured the AWS Provider: [documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

Then, run the following commands:

Init the working directory which contains the terraform configuration files: `terraform init`

Create an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure: `terraform plan`

If something is going wrong or an error occured, fix your problem before running the next command.

Execute the actions proposed in a Terraform plan: `terraform apply`

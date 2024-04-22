Azure Resume Infrastructure
[![GitHub Actions][github-actions-badge]][github-actions-url]
[![Terraform Version][terraform-version-badge]][terraform-url]
[![Azure Provider][azure-provider-badge]][azure-provider-url]

This repository contains an Azure infrastructure project using Terraform to provision and manage resources for a resume hosting application. The project demonstrates best practices in infrastructure as code, modular design, and resource management.

Table of Contents
Project Structure
Prerequisites
Getting Started
Deployment
Cleanup
Contributing
License
Project Structure
The project is structured as follows:

markdown
Copy
azure-resume-infrastructure/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── modules/
│   ├── app_service/
│   ├── sql_database/
│   └── storage_account/
├── scripts/
│   ├── deploy.sh
│   └── destroy.sh
└── README.md
main.tf: The main Terraform configuration file where the Azure provider and modules are defined.
variables.tf: Defines the input variables used in the Terraform configuration.
outputs.tf: Defines the output values that will be displayed after the infrastructure is provisioned.
terraform.tfvars: Contains the actual values for the input variables.
modules/: Directory to store reusable Terraform modules for different Azure resources.
scripts/: Directory to store deployment and cleanup scripts.
README.md: This file, providing documentation and instructions for the project.
Prerequisites
Before getting started, ensure you have the following prerequisites installed:

Terraform (version 1.0.0 or later)
Azure CLI (version 2.20.0 or later)
Getting Started
Clone this repository to your local machine:

bash
Copy
git clone https://github.com/yourusername/azure-resume-infrastructure.git
Navigate to the project directory:

bash
Copy
cd azure-resume-infrastructure
Initialize the Terraform working directory:

bash
Copy
terraform init
Review and customize the terraform.tfvars file with your desired values for the input variables.

Deployment
To deploy the Azure infrastructure, run the following command:

bash
Copy
./scripts/deploy.sh
This script will perform the following actions:

Initialize the Terraform working directory
Validate the Terraform configuration
Apply the Terraform configuration to provision the Azure resources
Once the deployment is complete, the script will display the output values, such as the App Service URL and SQL Server FQDN.

Cleanup
To destroy the provisioned Azure resources and clean up the infrastructure, run the following command:

bash
Copy
./scripts/destroy.sh
This script will perform the following actions:

Prompt for confirmation to destroy the resources
Destroy the Azure resources provisioned by Terraform
Note: Be cautious when running the destroy script, as it will permanently delete all the provisioned resources.

Contributing
Contributions to this project are welcome. If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

License
This project is licensed under the MIT License.
# Generative AI Resource Provisioning Module

## Module Overview
This Terraform module creates a user-managed notebook instance on Google Cloud Platform (GCP) for running generative AI examples. It clones the following repository:
1. [GoogleCloudPlatform/generative-ai](https://github.com/GoogleCloudPlatform/generative-ai) - This repository contains notebooks and content that demonstrate how to use, develop, and manage generative AI workflows using Generative AI, powered by Vertex AI on Google Cloud.
2. WIP


## GCP Products/Services

* Vertex AI Workbench Notebooks
* Cloud Storage


## Steps to Run the Module

1. Clone the module repository [GCP-GenerativeAI-ResourceProvisioner](https://github.com/manjilgautam/GCP-GenerativeAI-ResourceProvisioner.git) to your Cloud Shell Editor using the following command:

````hcl
   git clone https://github.com/manjilgautam/GCP-GenerativeAI-ResourceProvisioner.git
````

2. Edit the main.tf file. 

````hcl
cd GCP-GenerativeAI-ResourceProvisioner
````

````hcl
module "existing_project" {
  source = "./generative-ai-gcp-module"

  billing_account_id = "<BILLING_ID>"
  organization_id    = "<ORGANIZATION_ID>"
  folder_id          = "<FOLDER_ID>"

  create_project       = false
  project_id_prefix    = "<PROJECT_ID>"
  enable_services      = false
  
  set_external_ip_policy          = false
  set_shielded_vm_policy          = false
  set_trustedimage_project_policy = false
}
````

3. Deploy the module using Terraform:

````hcl
terraform init
````
````hcl
terraform apply
````

4. After the deployment is complete, you can access the user-managed notebook instance and start using the generative AI examples. 
![](./images/Usermanage Notebook instance SS.png)
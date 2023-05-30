# GenAI Exmaples resource provisioner Module

This Terraform module creates a user-managed notebook instance on Google Cloud Platform (GCP) for [generative-ai](https://github.com/GoogleCloudPlatform/generative-ai) repository.

## Module Overview

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
cd GCP-GenerativeAI-ResourceProvisioner
terraform init
terraform apply
````

4. After the deployment is complete, you can access the user-managed notebook instance and start using the generative AI examples.

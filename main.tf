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
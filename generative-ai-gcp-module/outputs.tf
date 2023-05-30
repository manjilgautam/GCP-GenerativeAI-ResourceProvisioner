/**
 * Copyright 2023 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

output "notebooks_googlemanaged_names" {
  description = "Google Managed Notebook Instance Names"
  value       = join(", ", google_notebooks_runtime.ai_notebook_googlemanaged[*].name)
}

output "notebooks_googlemanaged_urls" {
  description = "Google Managed Notebook access URLs"
  value       = formatlist("https://%s", google_notebooks_runtime.ai_notebook_googlemanaged[*].proxy_uri)
}

output "notebooks_usermanaged_names" {
  description = "User Managed Notebook Instance Names"
  value       = google_notebooks_instance.ai_notebook_usermanaged[*].name
}

output "notebooks_usermanaged_urls" {
  description = "User managed notebook access URLs"
  value       = formatlist("https://%s", google_notebooks_instance.ai_notebook_usermanaged[*].proxy_uri)

  depends_on = [
    null_resource.ai_notebook_usermanaged_provisioning_state
  ]
}

output "user_scripts_bucket_uri" {
  description = "User Script Bucket URI"
  value       = google_storage_bucket.user_scripts_bucket.self_link
}
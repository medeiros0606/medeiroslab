# Configure the Oracle Cloud Infrastructure provider with an API Key
provider "oci"{
  tenancy_ocid = var.tenancy_ocid
  user_ocid = var.user_ocid
  fingerprint = var.fingerprint
  private_key_path = var.private_key_path
  region = var.region
}

# Get a list of Availability Domains
data "oci_identity_availability_domains" "ads" {
  compartment_id = var.tenancy_ocid
}

# Lists the API signing keys for the specified user
data "oci_identity_api_keys" "test_api_keys" {
    user_id = var.user_ocid
}

# Output the result
output "show-ads" {
  value = data.oci_identity_availability_domains.ads.availability_domains
}

output "show-keys" {
  value = data.oci_identity_api_keys.test_api_keys.api_keys
}



# third_party_providers

You can find third-party providers and community providers on the website [registry.terraform.io](https://registry.terraform.io/browse/providers)

The difference between a third party provider and an official provider in case of downloading the provider is the namespace. 

In this example you will install an official provider and a third-party provider to see the difference between the two. 

# Prerequisites

## Install terraform  
See the following documentation [How to install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)

# How to

- Clone the repository to your local machine
```
git clone https://github.com/munnep/third_party_providers.git
```
- Change your directory
```
cd third_party_providers
```
- look at the ```providers.tf``` which states that we just want to use ```aws``` 
- Terraform initialize
```
terraform init
```
- it will automatically download the latest official aws provider. It will look for the following address to download
```
registry.terraform.io/hashicorp/
```
- Let's add a third-party provider like ```grafana``` to the ```provider.tf``` file
```
provider "grafana" {
}
```
- Terraform initialize
```
terraform init
```
- you will get errors because it will look at hashicorp official providers by default
```
│ Error: Failed to query available provider packages
│ 
│ Could not retrieve the list of available versions for provider hashicorp/grafana: provider
│ registry registry.terraform.io does not have a provider named
│ registry.terraform.io/hashicorp/grafana
│ 
│ Did you intend to use grafana/grafana? If so, you must specify that source address in each module
│ which requires that provider. To see which modules are currently depending on hashicorp/grafana,
│ run the following command:
│     terraform providers
╵
```
- add the following code to ```provider.tf``` to tell in which namespace to download the grafana provider from
```
terraform {
  required_providers {
    grafana = {
      source = "grafana/grafana"
      version = "1.17.0"
    }
  }
}
```
- Terraform initialize
```
terraform init
```
- Now you will see the download of the grafana provider
```
- Installing grafana/grafana v1.17.0...
- Installed grafana/grafana v1.17.0 (signed by a HashiCorp partner, key ID 570AA42029AE241A)
```

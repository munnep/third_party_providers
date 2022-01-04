# Example: Third-party Providers

You can find third-party providers and community providers on the website [registry.terraform.io](https://registry.terraform.io/browse/providers)

The difference between downloading an official provider and third-party provider is the namespace where Terraform will look for the download. 

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
- Terraform initialize
```
terraform init
```
- it will download the latest official aws provider from 
```
registry.terraform.io/hashicorp/
```
- It will download the latest third-party provider grafana from 
```
registry.terraform.io/grafana/
```

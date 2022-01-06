# Description
This repo contains an example of using bash script to extract some data that can't be achieved by terrofrm and next use it in other terraform resources.
This particular exampe is calling the [https://ifconfig.me/ip](https://ifconfig.me/ip) and prints result.
It was created as an example for the [corresponding blog post](http://www.tech-notes.net/terraform-bash-script-external-data-source/)

# Usage
```bash
terraform init
terraform apply --auto-approve
```
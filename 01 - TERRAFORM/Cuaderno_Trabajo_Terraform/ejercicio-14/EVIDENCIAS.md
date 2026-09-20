Terraform has been successfully initialized!
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_vpc.vpc_aula will be created
  + resource "aws_vpc" "vpc_aula" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.50.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = (known after apply)
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + region                               = "us-east-1"
      + tags                                 = {
          + "Name" = "vpc-original"
        }
      + tags_all                             = {
          + "Name" = "vpc-original"
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_vpc.vpc_aula: Creating...
aws_vpc.vpc_aula: Creation complete after 3s [id=vpc-0f27946108668d609]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # aws_vpc.vpc_aula will be updated in-place
  ~ resource "aws_vpc" "vpc_aula" {
        id                                   = "vpc-0f27946108668d609"
      ~ tags                                 = {
          ~ "Name" = "vpc-original" -> "vpc-modificada"
        }
      ~ tags_all                             = {
          ~ "Name" = "vpc-original" -> "vpc-modificada"
        }
        # (19 unchanged attributes hidden)
    }

Plan: 0 to add, 1 to change, 0 to destroy.
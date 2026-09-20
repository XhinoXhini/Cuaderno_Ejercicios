    Directorio: C:\Users\Xhino\Documents\Devops\01 - TERRAFORM\Cuaderno_Trabajo_Terraform\ejercicio-09


Mode                 LastWriteTime         Length Name                                                                                           
----                 -------------         ------ ----                                                                                           
d-----        20/09/2026     13:43                terraform-09-variables    

Terraform has been successfully initialized!
Success! The configuration is valid.
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_vpc.vpc_aula will be created
  + resource "aws_vpc" "vpc_aula" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.10.0.0/16"
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
          + "Entorno" = "DEV"
          + "Name"    = "vpc-aula"
        }
      + tags_all                             = {
          + "Entorno" = "DEV"
          + "Name"    = "vpc-aula"
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.
    Directorio: C:\Users\Xhino\Documents\Devops\01 - TERRAFORM\Cuaderno_Trabajo_Terraform\ejercicio-11


Mode                 LastWriteTime         Length Name                                                                                           
----                 -------------         ------ ----                                                                                           
d-----        20/09/2026     13:51                terraform-11-outputs      

Terraform has been successfully initialized!
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_vpc.vpc_aula will be created
  + resource "aws_vpc" "vpc_aula" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.30.0.0/16"
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
          + "Name" = "vpc-outputs"
        }
      + tags_all                             = {
          + "Name" = "vpc-outputs"
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + vpc_cidr = "10.30.0.0/16"
  + vpc_id   = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_vpc.vpc_aula: Creating...
aws_vpc.vpc_aula: Creation complete after 2s [id=vpc-0be6d746005580e48]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

vpc_cidr = "10.30.0.0/16"
vpc_id = "vpc-0be6d746005580e48"
PS C:\Users\Xhino\Documents\Devops\01 - TERRAFORM\Cuaderno_Trabajo_Terraform\ejercicio-11\terraform-11-outputs> terraform output
vpc_cidr = "10.30.0.0/16"
vpc_id = "vpc-0be6d746005580e48"
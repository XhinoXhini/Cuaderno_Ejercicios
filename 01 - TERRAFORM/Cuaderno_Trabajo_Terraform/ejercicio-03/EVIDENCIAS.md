PS C:\Users\Xhino\Documents\Devops\01 - TERRAFORM\Cuaderno_Trabajo_Terraform\ejercicio-03> aws sts get-caller-identity --region us-east-1
{                                                                                                                                                
    "UserId": "AROAU6MOU3VE24RNHTH6M:user4549452=a29007@svalero.com",
    "Account": "340138450249",
    "Arn": "arn:aws:sts::340138450249:assumed-role/voclabs/user4549452=a29007@svalero.com"
}

PS C:\Users\Xhino\Documents\Devops\01 - TERRAFORM\Cuaderno_Trabajo_Terraform\ejercicio-03> mkdir terraform-03-vpc
>> cd terraform-03-vpc
>> code .


    Directorio: C:\Users\Xhino\Documents\Devops\01 - TERRAFORM\Cuaderno_Trabajo_Terraform\ejercicio-03


Mode                 LastWriteTime         Length Name                                                                                           
----                 -------------         ------ ----                                                                                           
d-----        20/09/2026     11:38                terraform-03-vpc                                                                               


Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
Success! The configuration is valid.

Plan: 1 to add, 0 to change, 0 to destroy.

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

aws_vpc.vpc_aula

Destroy complete! Resources: 1 destroyed.
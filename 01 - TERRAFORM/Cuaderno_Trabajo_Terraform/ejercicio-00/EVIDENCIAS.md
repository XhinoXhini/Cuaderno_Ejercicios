PS C:\Users\Xhino\Documents\Devops\01 - TERRAFORM\Cuaderno_Trabajo_Terraform\ejercicio-00> aws --version
aws-cli/2.36.44 Python/3.14.6 Windows/11 exe/AMD64
PS C:\Users\Xhino\Documents\Devops\01 - TERRAFORM\Cuaderno_Trabajo_Terraform\ejercicio-00> 

PS C:\Users\Xhino\Documents\Devops\01 - TERRAFORM\Cuaderno_Trabajo_Terraform\ejercicio-00> aws sts get-caller-identity --region us-east-1
{                                                                                                                                                
    "UserId": "AROAU6MOU3VE24RNHTH6M:user4549452=a29007@svalero.com",
    "Account": "340138450249",
    "Arn": "arn:aws:sts::340138450249:assumed-role/voclabs/user4549452=a29007@svalero.com"
}

PS C:\Users\Xhino\Documents\Devops\01 - TERRAFORM\Cuaderno_Trabajo_Terraform\ejercicio-00> 

PS C:\Users\Xhino\Documents\Devops\01 - TERRAFORM\Cuaderno_Trabajo_Terraform\ejercicio-00> terraform version
Terraform v1.16.2
on windows_amd64

Mode                 LastWriteTime         Length Name                                                                                           
----                 -------------         ------ ----                                                                                           
d-----        18/09/2026     19:22                terraform-00-configuracion                                                                     


PS C:\Users\Xhino\Documents\Devops\01 - TERRAFORM\Cuaderno_Trabajo_Terraform\ejercicio-00\terraform-00-configuracion> 


You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.

PS C:\Users\Xhino\Documents\Devops\01 - TERRAFORM\Cuaderno_Trabajo_Terraform\ejercicio-00\terraform-00-configuracion> terraform validate
Success! The configuration is valid.
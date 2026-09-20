output "vpc_id" {
  value = aws_vpc.vpc_aula.id
}

output "ec2_id" {
  value = aws_instance.ec2_publica.id
}

output "ec2_public_ip" {
  value = aws_instance.ec2_publica.public_ip
}

output "bucket_name" {
  value = aws_s3_bucket.bucket_aula.bucket
}
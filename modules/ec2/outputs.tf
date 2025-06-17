output "ec2_instance_public_ips" {
  value = {
    for key, inst in aws_instance.ec2_instance :
    key => inst.public_ip
  }
}

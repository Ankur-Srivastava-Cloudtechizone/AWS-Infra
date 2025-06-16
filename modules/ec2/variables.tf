# ec2 variables here
variable "instances" {
  description = "EC2 instances map"
  type = map(object({
    ami                    = string
    instance_type          = string
    key_name               = string
    subnet_id              = string
    vpc_security_group_ids = list(string)
  }))
}

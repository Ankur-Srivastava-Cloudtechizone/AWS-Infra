aws_region = "ap-south-1"

instances = {
  "web-server-1" = {
    ami                   = "ami-0abcdef1234567890"
    instance_type         = "t3.micro"
    subnet_id             = "subnet-abc123"
    security_group_ids    = [module.security_groups.security_group_ids["ec2-sg-dev"]]
    associate_public_ip   = true
    key_name              = "my-secure-key"
  }
}

environment = "dev"

common_tags = {
  Project     = "NetwebInfra"
  Owner       = "Ankur"
  CostCenter  = "CloudOps"
}

#aws_region = "ap-south-1"

#environment = "dev"

db_clusters = {
  "aurora-db" = {
    engine_version         = "14.6"
    master_username        = "admin"
    master_password        = "SecretPass123"
    subnet_ids             = ["subnet-abc", "subnet-def"]
    vpc_security_group_ids = ["sg-456"]
  }
}

eks_clusters = {
  "prod-eks" = {
    role_arn      = "arn:aws:iam::123456789:role/EKSRole"
    version       = "1.29"
    subnet_ids    = ["subnet-abc", "subnet-def"]
    node_role_arn = "arn:aws:iam::123456789:role/EKSNodeRole"
    desired_size  = 2
    max_size      = 3
    min_size      = 1
  }
}

ecr_repositories = {
  "app-repo" = {}
}

cloudfront_distributions = {
  "site-distribution" = {
    comment       = "Main Site CDN"
    origin_domain = "mybucket.s3.amazonaws.com"
  }
}

route53_records = {
  "myrecord" = {
    zone_id      = "Z2P70J7EXAMPLE"
    name         = "app.example.com"
    type         = "A"
    record_value = "192.168.1.1"
  }
}

s3_buckets = {
  "backup-bucket" = {}
}

etl_jobs = {
  "glue-job" = {
    role_arn        = "arn:aws:iam::123456789:role/AWSGlueServiceRole"
    script_location = "s3://scripts/glue-job.py"
  }
}

security_groups = {
  "ec2-sg-dev" = {
    description       = "Security Group for EC2 Dev"
    vpc_id            = "vpc-0abcd1234"
    ssh_allowed_cidrs = ["203.0.113.0/24"]
  }

  "bastion-sg" = {
    description       = "Bastion host SG"
    vpc_id            = "vpc-0abcd1234"
    ssh_allowed_cidrs = ["0.0.0.0/0"]
  }
}

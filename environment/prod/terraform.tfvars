
aws_region = "ap-south-1"

ec2_instances = {
  "web1" = {
    ami                    = "ami-12345678"
    instance_type          = "t3.micro"
    key_name               = "my-key"
    subnet_id              = "subnet-abc"
    vpc_security_group_ids = ["sg-123"]
  }
}

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
    role_arn   = "arn:aws:iam::123456789:role/EKSRole"
    subnet_ids = ["subnet-abc", "subnet-def"]
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

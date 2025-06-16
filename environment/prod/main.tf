
module "ec2" {
  source    = "../../modules/ec2"
  instances = var.ec2_instances
}

module "aurora" {
  source      = "../../modules/aurora"
  db_clusters = var.db_clusters
}

module "eks" {
  source    = "../../modules/eks"
  clusters  = var.eks_clusters
}

module "ecr" {
  source        = "../../modules/ecr"
  repositories  = var.ecr_repositories
}

module "cloudfront" {
  source         = "../../modules/cloudfront"
  distributions  = var.cloudfront_distributions
}

module "route53" {
  source  = "../../modules/route53"
  records = var.route53_records
}

module "s3_backup" {
  source  = "../../modules/s3_backup"
  buckets = var.s3_buckets
}

module "etl" {
  source  = "../../modules/etl"
  jobs    = var.etl_jobs
}

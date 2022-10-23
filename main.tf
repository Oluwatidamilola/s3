terraform {
    required_providers {
        aws = ">= 2.0.0"
    }
}


provider "aws" {
    region = var.region #region you wish to deploy resources to 
    secret_key = var.secret_key     
    access_key = var.access_key
}

module "ResouceSyncBucket" {
    source = "./modules/s3"

    region = var.region
    account_id = var.account_id
    object_ownership = var.object_ownership
    versioning = var.versioning
    kms_key_arn = var.kms_key_arn
    ss3_algorithm = var.ss3_algorithm
    block_public_acls = var.block_public_acls
    block_public_policy = var.block_public_policy
    ignore_public_acls = var.ignore_public_acls
    restrict_public_buckets = var.restrict_public_buckets
    tag = var.tag
    bucketacl = var.bucketacl
    organization_id = var.organization_id
}


  
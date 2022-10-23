variable "region" {
    description = "The region where AWS resources will be created"
    type = string
    default = "us-east-1"
}
  
variable "access_key" {
    description = "AWS Access Key. It can also be set via the AWS_ACCESS_KEY_ID environment variable."
    type = string
    default = ""
}
  
variable "secret_key" {
    description = "AWS Secret Key. It can also be set via the AWS_SECRET_ACCESS_KEY environment variable."
    type = string
    default = ""
}
  
variable "account_id" {
    description = "AWS Account ID"
    type = string
    default = ""
}

variable "object_ownership" {
    description = "Specifies whether you want S3 Object Lock to automatically apply a Legal Hold to new objects placed in the specified bucket. Defaults to Disabled"
    type = string
    default = "BucketOwnerPreferred"
}

variable "versioning" {
    description = "Enables versioning of objects in the bucket. Defaults to Disabled"
    type = string
    default = "Enabled"
}

variable "kms_key_arn" {
    description = "The ARN of the AWS KMS master key to use for the bucket. Defaults to aws/s3"
    type = string
    default = "alias/aws/s3"
}

variable "ss3_algorithm" {
    description = "The server-side encryption algorithm to use. Valid values are AES256 and aws:kms. Defaults to AES256"
    type = string
    default = "aws:kms"
}

variable "block_public_acls" {
    description = "Whether Amazon S3 should block public access control lists (ACLs) for this bucket and objects in this bucket. Defaults to true"
    type = bool
    default = true
}

variable "block_public_policy" {
    description = "Whether Amazon S3 should block public bucket policies for this bucket. Defaults to true"
    type = bool
    default = true
}

variable "ignore_public_acls" {
    description = "Whether Amazon S3 should ignore public ACLs for this bucket and objects in this bucket. Defaults to true"
    type = bool
    default = true
}

variable "restrict_public_buckets" {
    description = "Whether Amazon S3 should restrict public bucket policies for this bucket. Defaults to true"
    type = bool
    default = true
}

variable "tag" {
    description = "A mapping of tags to assign to the bucket"
    type = map(string)
    default = {}
}

variable "bucketacl" {
    description = "The canned ACL to apply. Defaults to private"
    type = string
    default = "private"
}

variable "organization_id" {
    description = "The AWS organization ID"
    type = string
    default = ""
}


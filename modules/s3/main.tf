resource "aws_s3_bucket" "my-new-bucket" {
    bucket = var.bucket_name
    tags = var.tags  
}

resource "aws_s3_bucket_versioning" "new"{
    bucket = aws_s3_bucket.new.id 
    versioning_configuration {
        status = var.versioning_enabled ? "Enabled" : "Suspended"
    }
}

variable "bucket_name" {
    type = string
  
}

variable "versioning_enabled" {
    type = bool
  
}

variable "tags" {
    type = map(string)
  
}

resource "aws_dynamodb_table" "dynamodb_table" {
    name = var.table_name
    billing_mode = var.billing_mode
    hash_key = var.hash_key

    attribute {
        name = var.hash_key
        type = var.hash_key_type
    }

    tags = var.tags
}

variable "table_name" {
    type = string           
  
}

variable "billing_mode" {
    type = string
  
}

variable "hash_key" {
    type = string
  
}

variable "tags" {
    type = map(string)
  
}

variable "hash_key_type" {
    type = string
  
}
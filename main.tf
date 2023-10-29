terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.23.1"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

resource "aws_s3_bucket_acl" "example" {
  bucket = "AdventureTech-NA-bucket"
  acl    = "private" 
  tags 
    Name        = "My bucket"
    Environment = "Dev"
  
}

resource "aws_s3_bucket_acl" "example" {
    bucket = "NatureEscape-NA-bucket"
  depends_on = [aws_s3_bucket_ownership_controls.example]

  bucket = aws_s3_bucket.example.id
  acl    = "private"
}

resource "aws_s3_bucket_acl" "example" {
    bucket = "Datasummit-NA-bucket"
  depends_on = [aws_s3_bucket_ownership_controls.example]

  bucket = aws_s3_bucket.example.id
  acl    = "private"
}
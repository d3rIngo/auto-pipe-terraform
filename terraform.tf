provider "aws" {
  region = "eu-central-1" # Ändern Sie dies entsprechend Ihrer Region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "example-bucket" # Ändern Sie dies zu einem eindeutigen Bucket-Namen
  acl    = "private"         # ACL auf private setzen
}

resource "aws_s3_bucket_object" "index" {
  bucket = aws_s3_bucket.my_bucket.bucket
  key    = "index.html"      # Name des Objekts
  acl    = "public-read"     # ACL auf public-read setzen
  source = "index.html"
}

resource "aws_s3_bucket" "bucket161224" {
  bucket = "bucket161224"

  tags = {
    Name      = "bucket161224"
    terraform = true
  }
}
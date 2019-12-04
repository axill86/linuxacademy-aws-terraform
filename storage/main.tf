#Create random id
resource "random_id" "tf_bucket_id" {
  byte_length = "2"
}

resource "aws_s3_bucket" "tf_code" {
  bucket = "${var.project_name}-${random_id.tf_bucket_id.dec}"
  force_destroy = true
  acl = "private"
  tags {
    Name = "tf_bucket"
  }
}
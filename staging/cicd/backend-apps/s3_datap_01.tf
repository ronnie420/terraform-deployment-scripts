resource "aws_s3_bucket" "dtap-01-nexus" {
  bucket = "dtap-01-nexus"
  acl    = "private"

tags = {
    Name        = "DTAP_01"
    Environment = "Staging"
}
}

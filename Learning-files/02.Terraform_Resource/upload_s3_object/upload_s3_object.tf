resource "aws_s3_object" "object" {
  bucket = "master-jagat"
  key    = "folder1/folder2/text.txt"
  source = "/Users/jagat/Desktop/Terraform/04.Terraform-Resource/text.txt"
}

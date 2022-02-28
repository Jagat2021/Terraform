resource "aws_s3_bucket" "mys3bucket" {
  for_each = {
    dev  = "my-dev-appbucket"
    uat  = "my-dat-appbucket"
    prod = "my-drod-appbucket"
    dr   = "my-dr-appbucket"
  }

  bucket = "${each.key}-${each.value}"


  tags = {
    bucketname = "${each.key}-${each.value}"
    env        = "${each.key}"
    eachvalue  = "${each.value}"
  }


}



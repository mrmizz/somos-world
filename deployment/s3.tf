#######################################################
## DOMAINS ############################################
resource "aws_s3_bucket" "domain" {
  bucket = var.domain_name
  force_destroy = true
  acl = "public-read"
  website {
    index_document = "index.html"
  }
  tags = {
    Project = "somos"
    ServiceType = "ui"
  }
  policy = <<POLICY
{
  "Version":"2012-10-17",
  "Statement":[
    {
      "Sid":"AddPerm",
      "Effect":"Allow",
      "Principal": "*",
      "Action":["s3:GetObject"],
      "Resource":["arn:aws:s3:::${var.domain_name}/*"]
    }
  ]
}
POLICY
}

resource "aws_s3_bucket" "sub-domain-dev" {
  bucket = "dev.${var.domain_name}"
  force_destroy = true
  acl = "public-read"
  website {
    index_document = "index.html"
  }
  tags = {
    Project = "somos"
    ServiceType = "ui"
  }
  policy = <<POLICY
{
  "Version":"2012-10-17",
  "Statement":[
    {
      "Sid":"AddPerm",
      "Effect":"Allow",
      "Principal": "*",
      "Action":["s3:GetObject"],
      "Resource":["arn:aws:s3:::dev.${var.domain_name}/*"]
    }
  ]
}
POLICY
}

resource "aws_s3_bucket" "sub-domain-store" {
  bucket = "store.${var.domain_name}"
  force_destroy = true
  acl = "public-read"
  website {
    index_document = "index.html"
  }
  tags = {
    Project = "somos"
    ServiceType = "ui"
  }
  policy = <<POLICY
{
  "Version":"2012-10-17",
  "Statement":[
    {
      "Sid":"AddPerm",
      "Effect":"Allow",
      "Principal": "*",
      "Action":["s3:GetObject"],
      "Resource":["arn:aws:s3:::store.${var.domain_name}/*"]
    }
  ]
}
POLICY
}

resource "aws_s3_bucket" "sub-domain-datum" {
  bucket = "datum.${var.domain_name}"
  force_destroy = true
  acl = "public-read"
  website {
    index_document = "index.html"
  }
  tags = {
    Project = "somos"
    ServiceType = "ui"
  }
  policy = <<POLICY
{
  "Version":"2012-10-17",
  "Statement":[
    {
      "Sid":"AddPerm",
      "Effect":"Allow",
      "Principal": "*",
      "Action":["s3:GetObject"],
      "Resource":["arn:aws:s3:::datum.${var.domain_name}/*"]
    }
  ]
}
POLICY
}

resource "aws_s3_bucket" "sub-domain-www" {
  bucket = "www.${var.domain_name}"
  force_destroy = true
  website {
    redirect_all_requests_to = var.domain_name
  }
}
#######################################################

#######################################################
## ASSETS #############################################
resource "aws_s3_bucket" "assets" {
  bucket = "assets.${var.domain_name}"
  force_destroy = true
  acl = "public-read"
  tags = {
    Project = "somos"
    ServiceType = "ui"
  }
  policy = <<POLICY
{
  "Version":"2012-10-17",
  "Statement":[
    {
      "Sid":"AddPerm",
      "Effect":"Allow",
      "Principal": "*",
      "Action":["s3:GetObject"],
      "Resource":["arn:aws:s3:::assets.${var.domain_name}/*"]
    }
  ]
}
POLICY
}
#######################################################
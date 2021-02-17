terraform {
  required_providers {
    dominos = {
      source  = "onlydole/pizza/dominos"
      version = "1.0.0"
    }
  }
  required_version = "~> 0.14"
}

terraform {
  backend "s3" {
    bucket = "policy-compliant-pizza-2020"
    key    = "onlydole/cloud-native-kitchen"
    region = "us-east-1"
  }
}

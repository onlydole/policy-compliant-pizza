package main

deny[msg] {
    not input.terraform_version == "0.14.2"
    msg = "Ensure Terraform version 0.14.2 is being used"
}

deny[msg] {
  val := input.resource_changes[_].type 
  not contains(val, "dominos_order")
  
  msg = "Make sure a pizza is being ordered"
}

deny[msg] {
  search := input.variables.pizza_order.value[i]
  contains(search, "Honolulu Hawaiian") == true

  msg = "Pizza contains ham"
}

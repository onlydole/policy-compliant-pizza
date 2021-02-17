provider "dominos" {
  first_name    = var.first_name
  last_name     = var.last_name
  email_address = var.email_address
  phone_number  = var.phone_number

  ### PLEASE ensure intent of ordering a pizza 
  ### (this will charge the credit card you specify)
  credit_card {
    number = var.credit_card_number
    cvv    = var.credit_card_cvv
    date   = var.credit_card_expiration
    zip    = var.credit_card_zip
  }
}

data "dominos_address" "addr" {
  street = var.delivery_street
  city   = var.delivery_city
  state  = var.delivery_state
  zip    = var.delivery_zip
}

data "dominos_store" "store" {
  address_url_object = data.dominos_address.addr.url_object
}

data "dominos_menu_item" "pizza" {
  store_id     = data.dominos_store.store.store_id
  query_string = var.pizza_order
}

### PLEASE ensure intent of ordering a pizza 
### (this will charge the credit card you specify)
resource "dominos_order" "order" {
  address_api_object = data.dominos_address.addr.api_object
  item_codes         = [data.dominos_menu_item.pizza.matches.0.code]
  store_id           = data.dominos_store.store.store_id
}

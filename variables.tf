variable "first_name" {
  description = "The first name of your pizza recipient"
  type        = string
  default     = "Test"
}

variable "last_name" {
  description = "The last name of your pizza recipient"
  type        = string
  default     = "User"
}

variable "email_address" {
  description = "The email address of your pizza recipient"
  type        = string
  default     = "test.user@example.com"
}

variable "phone_number" {
  description = "The phone number of your pizza recipient"
  type        = string
  default     = "1234567890"
}

variable "credit_card_number" {
  description = "A credit card number used to pay for your pizza"
  type        = number
  default     = 4111111111111111
}

variable "credit_card_cvv" {
  description = "The CVV number on the back of your card used to pay for pizza"
  type        = number
  default     = 123
}

variable "credit_card_expiration" {
  description = "The expiration date of your credit card"
  type        = string
  default     = "5/24"
}

variable "credit_card_zip" {
  description = "The zip code used to authorize your credit card"
  type        = string
  default     = "90210"
}

variable "delivery_street" {
  description = "The pizza delivery house or unit number"
  type        = string
  default     = "601 Lakeside Avenue"
}

variable "delivery_city" {
  description = "The pizza delivery city"
  type        = string
  default     = "Cleveland"
}

variable "delivery_state" {
  description = "The pizza delivery state"
  type        = string
  default     = "OH"
}

variable "delivery_zip" {
  description = "The pizza delivery zip code"
  type        = string
  default     = "44114"
}

variable "pizza_order" {
  description = "A word or list of words used to create a pizza order"
  type        = list(string)
  default     = ["Large", "Wisconsin 6 Cheese"]
  #default = ["Large", "Honolulu Hawaiian"]
}

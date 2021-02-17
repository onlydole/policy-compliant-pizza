output "item_code" {
  value = data.dominos_menu_item.pizza.matches.0.code
}

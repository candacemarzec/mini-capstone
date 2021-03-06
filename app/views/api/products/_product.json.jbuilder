json.id product.id
json.name product.name
json.price product.price
json.description product.description
json.supplier product.supplier
json.images product.images
json.current_user current_user
json.category_names product.category_names


json.formatted do
  json.is_discounted? product.is_discounted?
  json.price number_to_currency(product.price)
  json.tax number_to_currency(product.tax)
  json.total number_to_currency(product.total)
end 
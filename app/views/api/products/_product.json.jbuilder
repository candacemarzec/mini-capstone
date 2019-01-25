json.id product.id
json.name product.name
json.price product.price
json.description product.description
json.supplier product.supplier
json.image product.images

json.formatted do
  json.is_discounted? product.is_discounted?
  json.price number_to_currency(product.price)
  json.tax number_to_currency(product.tax)
  json.total number_to_currency(product.total)
end 
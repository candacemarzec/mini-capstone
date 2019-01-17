Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do 
    get "/all_products_url" => "products#all_products"
    get "/first_product_url" => "products#first_product"
    get "/second_product_url" => "products#second_product"
  end
end
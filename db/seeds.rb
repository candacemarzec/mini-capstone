# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
product = Product.new(name: "Scarf", price: 52, image_url: "https://bananarepublic.gap.com/webcontent/0016/115/041/cn16115041.jpg", description: "Accent your look with this soft, rectangular scarf, made in a cozy, wool-blend fabric.")
product.save
product = Product.new(name: "Hat", price: 24, image_url: "https://cdn-1.jjshouse.com/upimg/s85/d4/eb/d9a0320fe9937b5077cf38aaddd0d4eb.jpg", description: "Ladies' Beautiful Wool With Bowknot Bowler/Cloche Hat")
product.save
product = Product.new(name: "Mittens", price: 40, image_url: "https://cdn.shopify.com/s/files/1/0268/8497/products/2250a_900x.jpg?v=1546298091", description: "Mittens made from light, fine textured wool.")
product.save
product = Product.new(name: "Peacoat", price: 89, image_url: "https://factory.jcrew.com/s7-img-facade/J6140_BR6527?fmt=jpeg&qlt=90,0&resMode=sharp&op_usm=.1,0,0,0&wid=636&hei=636", description: "Mid-thigh length, zip-closure coat with a standing collar.")
product.save
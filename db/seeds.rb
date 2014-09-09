# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Product.create(name: "Macbeth", price: "100")
#Product.create(name: "Othello", price: "100")
#Product.create(name: "King Lear", price: "100")
#Product.create(name: "Midsummer's Night Dream", price: "100")
Product.create(name: "Grand Theft Auto", price: "100")
#Book.create(product_id: 1, author: "Shakespeare")
#Book.create(product_id: 2, author: "Shakespeare")
#Book.create(product_id: 3, author: "Shakespeare")
Book.create(product_id: 4, author: "Shakespeare")
#Category.create(category: "Books")
Category.create(category: "Games")
#Product.update_all(category_id: 1)
@category=Category.where(category: "Games").first
@product=Product.where(name: "Grand Theft Auto").first
@product.update(category_id: @category.id)

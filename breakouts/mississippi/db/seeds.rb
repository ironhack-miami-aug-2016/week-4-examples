# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.create!(name: "Hemp", price: 60, image: "http://static1.squarespace.com/static/53bdd66be4b0817cc87aaf13/t/53e6bc99e4b09aec91758466/1407630502058/Hemp.jpg?format=1500w", description: "Great tasting Hemp Hearts have a slightly nutty taste, similar to a sunflower seed or pine nut.")
Product.create!(name: "Shotgun", price: 600, image: "http://www.benelliusa.com/sites/default/files/styles/firearm_1004/public/originals/product-firearms/828u-nickel-silo_1.png?itok=OVJQ0pQk", description: "Beretta® designed the A300 Outlander® Semi-Auto Shotgun, coated with TrueTimber® DRT™ Camo, specifically for waterfowl hunting. The TrueTimber DRT (Dead Right There) coating reduces corrosion inherent to goose and duck hunting conditions, and blends in with swamps and wetlands with a brown/gray contrast, yet has enough hazy yellow coloration for cattails and CRP fields.")
Product.create!(name: "Nizar's Pizza", price: 1000, image: "https://media.giphy.com/media/LX3Q9vcjwhKYE/giphy.gif", description: "Nizar's famous imaginary perfect pizza.")

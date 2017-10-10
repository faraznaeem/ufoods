# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dish.create([{
  name: Faker::Food.dish,
  description: Faker::Lorem.paragraph,
  price: Faker::Number.between(5, 60),
  pic_url: Faker::LoremPixel.image("80x60", false, 'food')
  }])

3.times do
  RestaurantCategory.create([{
      name: Faker::Commerce.department,
      description: Faker::Lorem.paragraph
      }])

  Restaurant.create([{
      name: Faker::Company.name,
      address: Faker::HitchhikersGuideToTheGalaxy.location
                      }])
  rest = Restaurant.last
  res_cat = RestaurantCategory.last
  rest.update_attribute(:restaurant_category, res_cat)
end
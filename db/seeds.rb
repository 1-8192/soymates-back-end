# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Recipe.destroy_all
Review.destroy_all
Ingredient.destroy_all
RecipesIngredient.destroy_all

tuna_roll = Recipe.create(name: 'Tuna Roll', img: 'https://www.justonecookbook.com/wp-content/uploads/2013/05/Spicy-Tuna-Roll-500x400.jpg', roll_type: 'Maki Roll', instructions: 'put tuna in rice and roll it')
salmon_roll = Recipe.create(name: 'Salmon Roll', img: 'https://lh3.googleusercontent.com/EqzIA_KqnoJX5xMRK_Y-rwQYpQVPHJ8qqGQa15pfjEn2Ur7bhnElbZLyNWoC9A9bEE2EKvR3pqaaiUi_35-8hrg6L9V2EoLagUvJ_aY=w600-l68', roll_type: 'Maki Roll', instructions: 'put salmon in rice and roll it')

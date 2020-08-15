# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all
User.destroy_all
Listing.destroy_all


dennys = Listing.create(name: "Denny's", address:"2690 N. Monroe St., Tallahassee, FL 32303", mens_chance: 0.00, womens_chance: 0.00, isolated_chance: 0.00, clean_chance: 0.00, working_chance: 0.00)
liz = User.create(username: "Liz", email: "test@test.com", password: "dinos")
review = Review.create(user_id: liz.id, listing_id: dennys.id, womens: true, mens: false, isolated: true, working: true, clean: false)
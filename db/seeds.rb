Restaurant.destroy_all
Review.destroy_all
5.times do
  restaurant = Restaurant.create(name: Faker::Food.dish, address: Faker::RickAndMorty.location, phone_number: Faker::PhoneNumber.phone_number, category: %w(chinese italian japanese french belgian).sample)
  rand(1..10).times do
    review = Review.create(rating: rand(0..5), content: Faker::RickAndMorty.quote, restaurant: restaurant)
  end
end

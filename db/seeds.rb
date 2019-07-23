100.times do |n|
  User.create!(name: Faker::Name.name, email: Faker::Internet.email)           
  puts "1"
end

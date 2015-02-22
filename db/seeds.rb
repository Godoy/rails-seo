cat = Category.create(name: Faker::Lorem.sentence)

for i in 1..5
  Event.create(category: cat, title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph(5), place: Faker::Address.city, 
    image: Faker::Avatar.image, start_date: Faker::Time.between(Time.now, 2.days.from_now), 
    end_date: Faker::Time.between(2.days.from_now, 10.days.from_now))
end

for i in 1..5
  News.create(category: cat, title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph(5), image: Faker::Company.logo)
end
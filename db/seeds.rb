# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Quarter.destroy_all
User.destroy_all
Club.destroy_all
Recrutement.destroy_all
Request.destroy_all
Event.destroy_all

	20.times do
        Quarter.create(zip_code: Faker::Address.zip_code,
                    name: Faker::Address.street_name
                    )
    end

puts "20 seed for Quarter created succesfully with 4 attributs"

    10.times do
        User.create(email: Faker::Internet.email,
                    password: "123456", quarter_id: rand(1..20))
    end

puts "20 seed for Recrutement created succesfully with 2 attributs"

10.times do
        Club.create(nom_club: Faker::Game.title,categorie: Faker::Address.city, recruiter_id: rand(1..5), quarter_id: rand(1..20))
    end
puts "10 seed for user created succesfully with 2 attributs and quarter_id"

    20.times do
    	a = 21
    	date = "#{a}/09/19"
        Recrutement.create(content: Faker::Movies::Hobbit.character,
                                deadline: date, club_id: rand(1..5))
        a +=1
    end



puts "10 seed for Club created succesfully with attribut user_id and quarter_id"

    for user in (1..10)
        Request.create(user_id: rand(1..10), recrutement_id: rand(1..20))
    end

puts "10 seed for Request created succesfully with attribut user_id "

10.times do
    event = Event.create!(start_date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 1), duration: 5*rand(5..20), title: Faker::Book.title, description: Faker::TvShows::HowIMetYourMother.quote, price: Faker::Number.number(digits: 4), location: Faker::Address.city, club_id: rand(1..5))
end

puts "10 seed for Event created succesfully with attribut club_id "


    

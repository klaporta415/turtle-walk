20.times do 
	User.create(name: Faker::Name.name, email: Faker::Internet.safe_email, password: 'password')
end

users = User.all 

temperaments = ['lazy', 'rude', 'crotchety', 'chill', 'energetic', 'distrustful']

10.times do 
	turtle = Turtle.new(name: Faker::Name.first_name, temperament: temperaments.sample)
	turtle.owner = users.sample
	turtle.save
end

turtles = Turtle.all 

50.times do
	walk = Walk.new
	walk.walker = users.sample
	walk.turtle = turtles.sample
	walk.save
end
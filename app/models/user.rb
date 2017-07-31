class User < ApplicationRecord
	has_secure_password

	has_many :owned_turtles, class_name: 'Turtle', foreign_key: :owner_id

	has_many :walks

	has_many :walked_turtles, through: :walks, source: :turtle

	has_many :turtle_walkers, through: :walked_turtles
end

class Turtle < ApplicationRecord
	has_many :walks
	has_many :walkers, through: :walks, source: :user
	belongs_to :owner, class_name: 'User', foreign_key: :owner_id
end

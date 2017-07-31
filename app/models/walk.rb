class Walk < ApplicationRecord
	belongs_to :turtle
	belongs_to :walker, class_name: 'User'
end

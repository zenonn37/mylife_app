class Category < ActiveRecord::Base

	#has_and_belongs_to_many :budgets
	has_many :categorizations
	has_many :budgets, through: :categorizations

end

class Team < ActiveRecord::Base
	validates :name, :state, :city, presence: true
	has_many :players

	def to_s
		self.name
	end
end

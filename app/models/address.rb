class Address < ActiveRecord::Base
	validates_presence_of :line1, :city, :country
	belongs_to :user
	has_many :orders


	def to_s
		[line1, line2, city, country].delete_if(&:blank?).join(', ')
	end

end

class Product < ActiveRecord::Base
	validates_numericality_of :price
	validates :stock, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
	has_many :order_items


	def self.search(search)
		where("title like ?", "%#{search}%")
	end

end

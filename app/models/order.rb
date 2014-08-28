class Order < ActiveRecord::Base
	validates_presence_of :status
	has_many :order_items, dependent: :destroy

	def total
		sum = 0
		order_items.each {|item| sum += item.subtotal}
		sum
	end	
end

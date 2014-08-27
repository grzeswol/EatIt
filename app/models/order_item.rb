class OrderItem < ActiveRecord::Base
	validates_numericality_of :order_id, :product_id, :quantity
	validates_presence_of :order_id, :product_id
	belongs_to :order
	belongs_to :product

	def subtotal
		quantity * product.price
	end
end

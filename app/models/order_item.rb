class OrderItem < ActiveRecord::Base
	validates_numericality_of :order_id, :product_id
	validates_presence_of :order_id, :product_id
	validates :quantity, numericality: { only_integer: true, greater_than: 0 }
	belongs_to :order
	belongs_to :product

	def subtotal
		quantity * product.price
	end
end

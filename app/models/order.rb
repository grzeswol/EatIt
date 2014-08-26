class Order < ActiveRecord::Base
	validates_presence_of :status
	has_many :order_items
end

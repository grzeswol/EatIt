require 'rails_helper'

RSpec.describe Order, :type => :model do
	describe 'total' do
		it 'returns total price for an order' do
			order = create(:order_with_order_items, order_items_count: 4)
			expect(order.total).to eq(16.00)
		end
	end
end

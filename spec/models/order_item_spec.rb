require 'rails_helper'

RSpec.describe OrderItem, :type => :model do
	describe 'subtotal' do
		it 'returns price * quantity of an item' do
			order = create(:order_with_order_items, order_items_count: 1)
			expect(order.order_items.first.subtotal).to eq(4.00)
		end
	end
end

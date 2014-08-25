require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ProductsHelper. For example:
#
# describe ProductsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
#
RSpec.describe ProductsHelper, :type => :helper do
	describe ProductsHelper do
		describe "print price" do
			it 'adds $ sign to a price' do
				expect(helper.print_price(2.00)).to eq("$2.00")
			end
		end

		describe 'print stock' do
			product = Product.new({:title => "Grapes", :price => 2.00, :stock => 4, :description => "Green grapes", :image_url => "gg.jpg",})
			it 'prints number in stock ' do
				expect(helper.print_stock(product.stock)).to eq("<span class=\"in_stock\">In Stock (#{product.stock})</span>")
			end

			it 'prints out of stock when out of stock' do
				product = Product.new({:title => "Grapes", :price => 2.00, :stock => 0, :description => "Green grapes", :image_url => "gg.jpg",})
				expect(helper.print_stock(product.stock)).to eq("<span class=\"out_stock\">Out of Stock</span>")
			end
		end
	end
end



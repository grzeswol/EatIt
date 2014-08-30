FactoryGirl.define do
	factory :order_item do
		product_id 1
		order_id 1
		quantity 2
		order
		product
	end

	factory :user do
		provider "twitter"
		uid "1234"
		name "sample_name"

		factory :user_with_orders do
			ignore do
				orders_count 5
			end

			after(:create) do |user, evaluator|
				create_list(:order, evaluator.orders_count, user: user)
			end
		end
	end

	factory :order do
		user_id 1
		status "unsubmitted"
		user

		factory :order_with_order_items do
			ignore do
				order_items_count 5
			end

			after(:create) do |order, evaluator|
				create_list(:order_item, evaluator.order_items_count, order: order)
			end
		end
	end

	factory :product do
		title "Green Grapes"
		price 2.00
		description "Something"
		image_url "green_grapes.jpg"

		factory :product_with_order_items do
			ignore do
				order_items_count 5
			end

			after(:create) do |product, evaluator|
				create_list(:order_item, evaluator.order_items_count, product: product)
			end
		end
	end
end




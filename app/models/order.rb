class Order < ActiveRecord::Base
    validates :product_name, :amount_in_cents, :order_date, presence:true
end

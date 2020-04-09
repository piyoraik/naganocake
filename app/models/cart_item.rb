class CartItem < ApplicationRecord
    belongs_to :end_user
    belongs_to :item

    def total_price(number, tax)
        total = number * tax
        return total
    end
end
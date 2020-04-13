class CartItem < ApplicationRecord
    belongs_to :end_user
    belongs_to :item

    def total_price(number, tax)
        total = number.to_i * tax.to_i
        return total
    end
end
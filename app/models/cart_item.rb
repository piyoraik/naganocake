class CartItem < ApplicationRecord
    belongs_to :end_user
    belongs_to :genre
end

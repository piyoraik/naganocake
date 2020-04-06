class Product < ApplicationRecord
    acts_as_paranoid
    belongs_to :genre
    attachment :image
    has_many :cart_items, dependent: :destroy
end

class Product < ApplicationRecord
    acts_as_paranoid
    belongs_to :category
    attachment :image
end

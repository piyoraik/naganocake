class Category < ApplicationRecord
    acts_as_paranoid
    has_many :items, dependent: :destroy
end

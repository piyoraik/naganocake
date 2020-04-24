class Order < ApplicationRecord
    belongs_to :end_user
    has_many :items, dependent: :destroy
    has_many :orders, dependent: :destroy
end

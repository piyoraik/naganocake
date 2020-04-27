class OrderDetail < ApplicationRecord
    belongs_to :item
    belongs_to :order

    enum status:[
        :not_proceed,
        :waiting_production,
        :production,
        :production_comp
    ]
end

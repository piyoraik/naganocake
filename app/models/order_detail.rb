class OrderDetail < ApplicationRecord
    belongs_to :item
    belongs_to :order

    enum status:[
        :beef,
        :fish,
        :pork
    ]
end

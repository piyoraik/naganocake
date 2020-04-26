class Order < ApplicationRecord
    belongs_to :end_user
    has_many :items, dependent: :destroy
    has_many :order_details, dependent: :destroy

    enum status:[
        :beef,
        :fish,
        :pork
    ]
end

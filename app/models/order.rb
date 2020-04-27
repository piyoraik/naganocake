class Order < ApplicationRecord
    belongs_to :end_user
    has_many :items, dependent: :destroy
    has_many :order_details, dependent: :destroy

    enum status:[
        :waitng_pay,
        :confirmation_pay,
        :production,
        :preparations,
        :shipped
    ]
end

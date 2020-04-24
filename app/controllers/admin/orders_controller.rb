class Admin::OrdersController < ApplicationController
    layout 'admin_layout'
    def index
        @orders = Order.all
    end
end

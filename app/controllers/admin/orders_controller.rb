class Admin::OrdersController < ApplicationController
    layout 'admin_layout'
    def index
        @orders = Order.all
    end

    def show
        @total_tax = 0
        @order = Order.find(params[:id])
    end
end

class Admin::OrdersController < ApplicationController
    layout 'admin_layout'
    def index
        @orders = Order.all
    end

    def show
        @total_tax = 0
        @order = Order.find(params[:id])
    end

    def update
        order = Order.find(params[:id])
        order.update(order_status_params)
        redirect_to admin_order_path(order)
    end

    private
        def order_status_params
            params.require(:order).permit(:status)
        end
end

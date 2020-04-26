class Admin::OrderItemsController < ApplicationController
    before_action :authenticate_admin!

    def update
        order = OrderDetail.find(params[:id])
        order.update(details_params)
        # binding pry
        if order.status == 'production'
            order.order.status = 2
            order.order.save
        end
        redirect_to admin_order_path(order.order_id)
    end

    private
        def details_params
            params.require(:order_detail).permit(:status)
        end
end

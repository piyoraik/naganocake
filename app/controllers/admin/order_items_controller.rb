class Admin::OrderItemsController < ApplicationController
    before_action :authenticate_admin!

    def update
        order = OrderDetail.find(params[:id])
        order.update(details_params)
        redirect_to admin_order_path(order.order_id)
    end

    private
        def details_params
            params.require(:order_detail).permit(:status)
        end
end

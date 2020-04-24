class Public::OrdersController < ApplicationController
    before_action :cart_item_check
    # 購入情報入力画面(支払い方法・配送先の選択)
    def new
        @order = Order.new
    end

    # 購入確認処理
    def check_show
        @order = Order.new(order_params)
        @total_tax = 0
        @order.amount = 0
        @order.postage = 800
        @order.payment = params[:order][:payment]
        if params[:select] == "1"
            @order.address = current_end_user.address
            @order.postcode = current_end_user.postcode
            @order.destination = current_end_user.first_name + current_end_user.last_name
        elsif params[:select] == "2"
            address = Address.find_by(address: params[:address_select])
            @order.address = params[:address_select]
            @order.postcode = address.postcode
            @order.destination = address.destination
        elsif params[:select] == "3"
            @order.address = params[:order][:address]
            @order.postcode = params[:order][:postage]
            @order.destination = params[:order][:destination]
        end
        # binding pry
    end

    # 購入完了画面
    def thanks
    end

    # 購入確定処理
    def create
        @order = Order.new(order_params)
        @order.end_user_id = current_end_user.id
        @order.save
        current_end_user.cart_items.destroy_all
        redirect_to orders_thanks_path
    end

    private
        def order_params
            params.require(:order).permit(:payment, :status, :postage, :amount, :address, :postcode, :destination)
        end

        def cart_item_check
            cart_item = current_end_user.cart_items
            unless cart_item.exists?
                redirect_to items_path
            end
        end
end

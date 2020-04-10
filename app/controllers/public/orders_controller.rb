class Public::OrdersController < ApplicationController
    # 購入情報入力画面(支払い方法・配送先の選択)
    def new
        @order = Order.new
    end

    # 購入確認処理
    def check_show
        @order = Order.new(order_params)
        binding pry
    end

    # 購入情報確認画面
    def check
    end

    # 購入完了画面
    def thanks
    end

    # 購入確定処理
    def create
    end

    private
        def order_params
            params.require(:order).permit(:end_user_id, :payment, :status, :postage, :amount, :address, :postcode, :destination)
        end
end

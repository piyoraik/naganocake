class Public::CartItemsController < ApplicationController
    before_action :authenticate_end_user!
    # カート内商品一覧画面
    def index
        @cart_items = CartItem.all
    end

    # カート内商品データ更新
    def update
        cart_item = CartItem.find(params[:id])
        cart_item.update(cart_item_update)
        redirect_to cart_items_path
    end

    # カート内商品削除(一商品)
    def destroy
    end

    # カート内商品削除(全部)
    def all_destroy
    end

    # カート内商品データ追加
    def create
        cart = CartItem.new(cart_add_params)
        cart.end_user_id = current_end_user.id
        cart.save
        redirect_to cart_items_path
    end

    private
        def cart_add_params
            params.require(:cart_item).permit(:item_id, :end_user_id, :number)
        end

        def cart_item_update
            params.require(:cart_item).permit(:number)
        end
end

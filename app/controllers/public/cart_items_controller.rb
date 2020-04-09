class Public::CartItemsController < ApplicationController
    before_action :authenticate_end_user!
    # カート内商品一覧画面
    def index
        @total_tax = 0
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
        cart_item = CartItem.find(params[:id])
        cart_item.destroy
        redirect_to cart_items_path
    end

    # カート内商品削除(全部)
    def all_destroy
        cart_items = current_end_user.cart_items.destroy_all
        redirect_to cart_items_path
    end

    # カート内商品データ追加
    def create
        # binding pry
        if current_end_user.cart_items.find_by(item_id: params[:cart_item][:item_id])
            cart_item = current_end_user.cart_items.find_by(item_id: params[:cart_item][:item_id])
            cart_item.number = cart_item.number + params[:cart_item][:number].to_i
        else
            cart_item = CartItem.new(cart_add_params)
            cart_item.end_user_id = current_end_user.id
        end
        cart_item.save
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

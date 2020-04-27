class Public::ItemsController < ApplicationController
    def top
    end

    def index
        @products = Item.all
    end

    def show
        @product = Item.find(params[:id])
        @cart_item = CartItem.new
    end
end

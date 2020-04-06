class Public::ItemsController < ApplicationController
    def top
    end

    def index
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
        $test_id = Product.find(params[:id])
        @cart_item = Cart.new
    end
end

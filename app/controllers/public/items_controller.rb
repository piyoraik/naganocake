class Public::ItemsController < ApplicationController
    def top
    end

    def index
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end
end

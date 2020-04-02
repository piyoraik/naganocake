class Public::ItemsController < ApplicationController
    def top
    end

    def index
        @categorys = Category.all
        @products = Product.all
    end

    def show
    end
end

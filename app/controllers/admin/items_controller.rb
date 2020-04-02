class Admin::ItemsController < ApplicationController
    before_action :authenticate_admin!
    layout 'admin_layout'
    # 商品一覧
    def index
        @products = Product.all
    end

    # 商品新規登録画面
    def new
        @product = Product.new
    end

    # 商品情報の新規登録
    def create
        product = Product.new(product_params)
        product.save
        redirect_to admin_items_path
    end

    # 商品詳細画面
    def show
        @product = Product.find(params[:id])
    end

    # 商品編集画面
    def edit
    end

    # 商品情報の更新
    def update
    end

    private

    def product_params
        params.require(:product).permit(:name, :description, :category_id, :tax, :status, :image)
    end
end

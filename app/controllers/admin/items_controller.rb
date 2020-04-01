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
    end

    # 商品詳細画面
    def show
    end

    # 商品編集画面
    def edit
    end

    # 商品情報の更新
    def update
    end
end

class Admin::EndUsersController < ApplicationController
    before_action :authenticate_admin!
    layout 'admin_layout'
    # 顧客一覧画面
    def index
        @users = EndUser.with_deleted
    end

    # 顧客詳細画面
    def show
    end

    # 顧客編集画面
    def edit
    end

    # 顧客情報の更新
    def update
    end
end

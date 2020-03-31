class Public::EndUsersController < ApplicationController
    before_action :authenticate_end_user!
    # 顧客のマイページ
    def index
    end

    # 顧客の登録情報編集画面
    def edit
    end

    # 顧客の登録情報更新
    def update
        current_end_user.update(end_user_params)
        redirect_to end_users_path
    end

    # 顧客の退会確認画面
    def destroy_show
    end

    # 顧客の退会処理
    def update_destroy
    end

    private
        def end_user_params
            params.require(:end_user).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :address, :phone_number, :email)
        end
end
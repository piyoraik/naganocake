class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path_for(resource_or_scope)
        if resource_or_scope == :admin
            admin_path
        elsif resource_or_scope == :end_user
            end_user_path(current_user.id)
        end
    end

    def after_sign_out_path_for(resource_or_scope)
        if resource_or_scope == :admin
            new_admin_session_path
        elsif resource_or_scope == :end_user
            new_end_user_session_path
        else
            root_path
        end
    end

    private
        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up,
            keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :address, :phone_number])
        end
end

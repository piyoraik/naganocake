class Admin::TopController < ApplicationController
    before_action :authenticate_admin!
    layout "admin_layout"

    def top
    end
end

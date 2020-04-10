class Public::AddressesController < ApplicationController
    def index
        @address = Address.new
        @addresses = current_end_user.addresses
    end

    def create
        address = Address.new(address_add_params)
        address.end_user_id = current_end_user.id
        address.save
        redirect_to addresses_path
    end

    def update
    end

    def destroy
    end

    def edit
    end

    private
        def address_add_params
            params.require(:address).permit(:postcode, :address, :destination)
        end
end

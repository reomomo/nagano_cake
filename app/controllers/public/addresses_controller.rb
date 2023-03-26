class Public::AddressesController < ApplicationController
  def index
  end

  def edit
  end

  private
  def address_params
    params.require(:address).permit(:customer_id, :name, :postal_code, :address)
  end

end

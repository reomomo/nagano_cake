class Admin::CustomersController < ApplicationController
  def show
    @customer = Customer.find(params.id)
  end

  def index
    @customers = Customer.all
  end

  def edit
    @customer = Customer.find(params.id)
    @customer.update
    rdirect_t admin_customer_path(@customer.id)
  end

  private

  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :postal_code, :address, :telephone_number, :is_deleted)
  end

end

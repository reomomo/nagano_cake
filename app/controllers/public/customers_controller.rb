class Public::CustomersController < ApplicationController
  def show

    @customer = Customer.find_by!(current_customer)

  end

  def edit
  end

  def unsubscribe
  end
end

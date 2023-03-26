class Public::CustomersController < ApplicationController
  def show
    @customer = Cusomer.current_customer
  end

  def edit
  end

  def unsubscribe
  end
end

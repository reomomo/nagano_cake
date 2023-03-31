class Public::OrdersController < ApplicationController
  before_action :authenticate_customer!, only: [:new, :index, :show, :confirm, :complete
  ]

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order1_params)
    redirect_to orders_confirm_path
  end

  def confirm
    @cart_items = current_customer.cart_items.all
    @total = 0
    # @order = Order.new(order_params)
    # @order.save
    # redirect_to orders_complete_path
  end

  def complete
  end

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(order1_params[:id])
  end

  private
  def order1_params
    params.require(:order).permit(:customer_id, :delivery_target_postal_code, :delivery_address, :delivery_target_full_name)
  end
  def order2_params
    params.require(:order).permit(:customer_id, :postage, :pay_amount, :payment_methods, :status)
  end

end

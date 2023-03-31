class Public::OrdersController < ApplicationController
  before_action :authenticate_customer!, only: [:new, :index, :show, :confirm, :complete
  ]

  def new
    @order = current_customer.orders.new
  end

  def create
    @order = current_customer.orders.new(order_params)
    redirect_to orders_confirm_path
  end

  def confirm
    @cart_items = current_customer.cart_items.all
    @total = 0
    @cart_items.each do |cart_item|
      @total += cart_item.item.with_tax_price*cart_item.amount
    end
    # @order = Order.new(order_params)
    # @order.save
    # redirect_to orders_complete_path
  end

  def complete
  end

  def index
    @orders = current_customer.orders.all
  end

  def show
    @order = Order.find(params[:id])
    @order_details = @order.order_details.all
  end

  private
  def order_params
    params.require(:order).permit(:customer_id, :delivery_target_postal_code, :delivery_address, :delivery_target_full_name, :postage, :pay_amount, :payment_methods, :status)
  end

end

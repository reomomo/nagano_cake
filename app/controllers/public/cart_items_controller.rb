class Public::CartItemsController < ApplicationController
  before_action :authenticate_customer!

  def create
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.customer_id = current_customer.id
    if current_customer.cart_items.find_by(item_id: params[:cart_item][:item_id]).present?
      cart_item = current_customer.cart_items.find_by(item_id: params[:cart_item][:item_id])
      cart_item.amount += params[:cart_item][:amount].to_i
      cart_item.save
      redirect_to cart_items_path
    elsif @cart_item.save
      @cart_items = current_customer.cart_items.all
      redirect_to cart_items_path
    else
      render :index
    end
  end

  def index
    @cart_items = current_customer.cart_items.all
    @total = 0
    @cart_items.each do |cart_item|
      @total += cart_item.item.with_tax_price*cart_item.amount
    end

    def to_oreder
      if @total == 0
        render :index
      else
        redirect_to new_order_path
      end
    end
  end

  def update
    cart_item = CartItem.find(params[:id])
    cart_item.update(cart_item_params)
    redirect_to cart_items_path
  end
# cart_item_params[:item_id]
  def destroy
    cart_item = CartItem.find(params[:id])
    cart_item.destroy
    @cart_items = current_customer.cart_items.all
    redirect_to cart_items_path
  end

  def destroy_all
    cart_items = current_customer.cart_items.all
    cart_items.destroy_all
    redirect_to cart_items_path
  end

private
  def cart_item_params
    params.require(:cart_item).permit(:item_id, :amount)
  end

end

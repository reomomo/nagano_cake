class Admin::OrderDetailsController < ApplicationController
  before_action :authenticate_admin!

  def update
    @order_detail = OrderDetail.find(params[:id])
    @order = Order.find(@order_detail.order.id)
    @order_details = @order.order_details
    if @order.status == 1
      @order_details.update(making_status: 1)
    else
      @order_detail.update(order_detail_params)
    end
    redirect_to admin_order_path(@order.id)
  end

  private
  def order_detail_params
    params.require(:order_detail).permit(:item_id, :order_id, :product_sum, :amount, :making_status)
  end

  def order_params
    params.require(:order).permit(:customer_id, :delivery_target_postal_code, :delivery_address, :delivery_target_full_name, :postage, :pay_amount, :payment_methods, :status)
  end

end

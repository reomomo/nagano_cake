class Admin::OrderDetailsController < ApplicationController
  def update
    @order_detail = OrderDetail.find(params[:id])
    @order = Order.find(@order_detail.order.id)
    @order_detail.update(order_detail_params)
    redirect_to admin_order_path(@order.id)
  end

  private
  def order_detail_params
    params.require(:order_detail).permit(:item_id, :order_id, :product_sum, :amount, :making_status)
  end

end

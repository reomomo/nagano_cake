class Public::OrdersController < ApplicationController
  before_action :authenticate_customer!

  def new # 注文情報入力画面
    @order = Order.new
    @addresses = current_customer.addresses.all
  end

  def confirm # 注文情報確認画面
    @order = Order.new(order_params)
  # ご自身の住所
    if params[:order][:address_option] == "0"
      @order.delivery_target_postal_code = current_customer.postal_code
      @order.delivery_address = current_customer.address
      @order.delivery_target_full_name = current_customer.last_name + current_customer.first_name
  # 登録済み住所
    elsif params[:order][:address_option] == "1"
      ship = Address.find(params[:order][:customer_id]).find(params[:address][:id])
      @order.delivery_target_postal_code = ship.postal_code
      @order.delivery_address = ship.address
      @order.delivery_target_full_name = ship.name
  # 新しいお届け先
    elsif params[:order][:address_option] == "2"
      @order.delivery_target_postal_code = params[:order][:delivery_target_postal_code]
      @order.delivery_address = params[:order][:delivery_address]
      @order.delivery_target_full_name = params[:order][:delivery_target_full_name]
    else
      render :new
    end

    @cart_items = current_customer.cart_items.all
    @order.customer_id = current_customer.id
    # 合計金額
    @total = 0
    @cart_items.each do |cart_item|
      @total += cart_item.item.with_tax_price*cart_item.amount
    end
  end

  def create # 注文情報保存
    @order = Order.new(order_params)
    @order.customer_id = current_customer.id
    @order.save
    # order_detailへの保存
    current_customer.cart_items.each do |cart_item|
      @order_detail = OrderDetail.new
      @order_detail.order_id = @order.id
      @order_detail.item_id = cart_item.item_id
      @order_detail.product_sum = (cart_item.item.price*1.1).floor
      @order_detail.amount = cart_item.amount
      @order_detail.save
    end
    # カートの中身を削除
    current_customer.cart_items.destroy_all
    render :complete
  end

  def complete # 注文完了画面
  end

  def index # 注文履歴一覧
    @orders = current_customer.orders.all
  end

  def show # 注文履歴詳細
    @order = Order.find(params[:id])
    @order_details = @order.order_details.all
  end

  private
  def order_params
    params.require(:order).permit(:customer_id, :delivery_target_postal_code, :delivery_address, :delivery_target_full_name, :postage, :pay_amount, :payment_methods, :status)
  end

end

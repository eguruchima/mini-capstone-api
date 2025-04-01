class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    # @orders = []
    # Order.all.each do |order|
    #   if order.user_id == current_user.id
    #     @orders.push(order)
    #   end
    # end
    render :index
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])
    render :show
  end

  def create
    if current_user
      product = Product.find_by(id: params[:product_id])

      calculated_subtotal = product.price * params[:quantity].to_i
      calculated_tax = product.tax * params[:quantity].to_i
      calculated_total = calculated_subtotal + calculated_tax

      @order = Order.create(
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity],
        subtotal: calculated_subtotal,
        tax: calculated_tax,
        total: calculated_total
      )
      if @order.valid?
      render :show
      else
        render json: { errors: @order.errors.full_messages }, status: 422
      end
    else
    render json: {}, status: :unauthorized
    end
  end
end

class OrdersController < ApplicationController

    def create 
        @order = Order.create(quantity: params[:quantity],
                            user_id: current_user.id,
                            product_id: params[:product_id])

        flash[:success] = "Order Created"
        redirect_to "/orders/#{@order.id}"

    end

    def show
        @order = Order.find(params[:id])
        @product = Product.find(@order.product_id)
        @user = User.find(@order.user_id)

    end

end

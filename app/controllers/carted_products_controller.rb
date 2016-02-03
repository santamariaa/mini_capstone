class CartedProductsController < ApplicationController
    def create
    @carted_product = CartedProduct.create({user_id: current_user.id, 
                                            product_id: params[:product_id],
                                            quantity: params[:quantity],
                                            status: "carted" }) 

    redirect_to "/carted_products"
    end

    def index
        if current_user 
            @carted_products = CartedProduct.where(user_id: current_user.id)
        end
    end
end

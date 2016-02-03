class ProductsController < ApplicationController
    def index
        if params[:order]
            @products = Product.order("price ASC")  
        else
            @products = Product.all
        end

        if params[:discount]    
            
        end

        if params[:category]
           @products =  Category.find_by(name: params[:category]).products    
        end
    end

    def show
        @product = Product.find_by(id: params[:id])
    end

    def new
    end

    def create
        @product = Product.create({name: params[:name],
                                price: params[:price],
                                image: params[:image],
                                description: params[:description]})

    flash[:success] = "New Product Created"

    redirect_to "/"    

    end

    def edit
        @product = Product.find_by(id: params[:id])
    end

    def update
        @product = Product.find_by(id: params[:id])

        @product.update({
                       name: params[:name],
                       price: params[:price],
                       image: params[:image],
                       description: params[:description]})

        flash[:success] = "Product Updated"
        redirect_to "/products/#{@product.id}"

    end

    def destroy
        @product = Product.find(params[:id])
        @product.destroy

        flash[:warning] = "Product destroyed"

        redirect_to "/"
    end

end






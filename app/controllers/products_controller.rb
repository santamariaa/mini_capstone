class ProductsController < ApplicationController
    def consumer_data
        @products = Product.all

    end

end

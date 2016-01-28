class Product < ActiveRecord::Base
    belongs_to :supplier
    has_many :images
    has_many :orders

    def sale_message
        if price.to_i < 2
            "Discount item!!!"  
        else 
            "On Sale"     
        end      
    end

    def tax
        price.to_i * 0.09 
    end

    def total
        price.to_i + tax
    end
end

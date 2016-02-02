class Order < ActiveRecord::Base

    has_many :carted_products
    has_many :products, through: :carted_products

    def friendly_time
        created_at.strftime("%b %e, %l:%M %p")
    end

    def calc_subtotal(price)
        price * quantity
    end

    def calc_tax(tax_rate)
        subtotal * tax_rate
    end

    def calc_total
        subtotal + tax
    end
    #devise
end

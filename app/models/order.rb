class Order < ActiveRecord::Base
    belongs_to :product
    belongs_to :user

    # def friendly_date
    #     <%= %m-%e-%y %H:%M %>
    # end
    #devise
end

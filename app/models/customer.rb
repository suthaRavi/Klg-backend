class Customer < ApplicationRecord
    validates :customer_id, :name, :address1, :address2, :city,
     :zipCode, :country,  presence:true
end

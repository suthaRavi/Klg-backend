class Member < ApplicationRecord
  validates :member_id, :first_name, :last_name, :department, :role,
     :reporting_id, :join_date, :category, :pay_rate, :status, presence:true    

end

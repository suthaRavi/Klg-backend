class Department < ApplicationRecord
  validates :code, :name, presence:true
end

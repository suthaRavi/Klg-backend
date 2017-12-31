class Role < ApplicationRecord
  validates :code, :name, presence:true
end

class Category < ApplicationRecord
  validates :code, :name, presence:true
end

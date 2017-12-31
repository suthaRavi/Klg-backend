class Status < ApplicationRecord
  validates :code, :name, presence:true
end

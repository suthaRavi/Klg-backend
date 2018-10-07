class JobTime < ApplicationRecord
  belongs_to :time_sheet, optional: true
  
end

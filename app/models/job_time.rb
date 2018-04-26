class JobTime < ApplicationRecord
  belongs_to :time_sheet, inverse_of: :job_times, optional: true
  
end

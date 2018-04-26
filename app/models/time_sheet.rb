class TimeSheet < ApplicationRecord 
  has_many :job_times, inverse_of: :time_sheet
  accepts_nested_attributes_for :job_times, :allow_destroy => true
  #accepts_nested_attributes_for :job_times
  
  
 
  
end

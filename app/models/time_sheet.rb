class TimeSheet < ApplicationRecord 
  has_many :job_times,  inverse_of: :time_sheet
  accepts_nested_attributes_for :job_times, :allow_destroy => true, update_only: true
  #accepts_nested_attributes_for :job_times
  validates :first_name, uniqueness: { scope: :job_date}
  def self.search(name,j_date, j_id )
  #  joins(:job_times).where("first_name = ? AND job_date = ? AND job_times.job_id = ?",  name, j_date,  j_id)
   includes(:job_times).where("job_times.job_id=? ", j_id).references(:job_times)
  end
 
  
end

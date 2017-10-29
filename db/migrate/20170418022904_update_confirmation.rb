class UpdateConfirmation < ActiveRecord::Migration[5.0]
  def change
    
      User.update_all(:confirmed_at => Time.now)
  end
end

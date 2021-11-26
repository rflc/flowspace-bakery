class AddReadyStatusToCookies < ActiveRecord::Migration[5.1]
  def change
    add_column :cookies, :ready_status, :boolean
  end
end

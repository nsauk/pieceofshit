class AccessLevelToInt < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :access_level, :integer
  end
end

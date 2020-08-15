class ChangeCleanToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :reviews, :clean, :boolean
  end
end

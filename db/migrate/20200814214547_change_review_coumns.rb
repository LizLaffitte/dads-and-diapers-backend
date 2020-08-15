class ChangeReviewCoumns < ActiveRecord::Migration[6.0]
  def change
    rename_column :reviews, :broken, :working
    rename_column :reviews, :private, :isolated
  end
end

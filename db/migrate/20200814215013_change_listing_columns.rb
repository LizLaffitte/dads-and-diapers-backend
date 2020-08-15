class ChangeListingColumns < ActiveRecord::Migration[6.0]
  def change
    rename_column :listings, :broken_chance, :working_chance
    rename_column :listings, :private_chance, :isolated_chance
  end
end

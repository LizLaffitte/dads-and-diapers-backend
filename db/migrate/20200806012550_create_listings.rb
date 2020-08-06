class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :address
      t.float :lat
      t.float :long
      t.float :mens_chance
      t.float :womens_chance
      t.float :private_chance
      t.float :clean_chance
      t.float :broken_chance
      t.timestamps
    end
  end
end

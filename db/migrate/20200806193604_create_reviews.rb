class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.references :listing, null: false, references: :listings
      t.references :user, null: false, references: :users
      t.boolean :mens
      t.boolean :womens
      t.boolean :private
      t.boolean :broken
      t.integer :clean
      t.timestamps
    end
  end
end

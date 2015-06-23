class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, :description, :email, :key
      t.decimal :price
      t.integer :category_id
      t.timestamps null: false
    end
  end
end

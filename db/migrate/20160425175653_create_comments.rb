class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :username
      t.string :title
      t.text :body
      t.integer :post_id

      t.datetime :posted_on
      t.timestamps null: false
    end
    add_index :comments, :post_id
  end
end

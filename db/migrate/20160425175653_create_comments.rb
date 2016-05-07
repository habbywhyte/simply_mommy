class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      # i noticed that both the post and comments have a property called username.
      # Now that you have a user model, how can we leverage that model to provide a user model.
      # What id will we need for this table and the posts table. We already have 1 foreign key for posts on comments, maybe another one for users!
      # then you'd be able to do comment.user.username and get the user's username for that comment
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

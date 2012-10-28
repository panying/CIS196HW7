class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.string :email
      t.string :email
      t.string :mood
      t.text :text

      t.timestamps
    end
  end
end

class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.references :user, foreign_key: true
      t.boolean :disactive, default: false

      t.timestamps
    end
    add_index :posts, :title, unique: true
  end
end

class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.with_options default: false do
        boolean :moderator
        boolean :creator
        boolean :disactive
      end
      t.timestamps
    end
    add_index :users, :name, unique: true
    add_index :users, :email, unique: true
  end
end

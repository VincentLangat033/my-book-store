class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :rating
      t.integer :user_id
      t.integer :book_id
      t.string :comment

      t.timestamps
    end
  end
end

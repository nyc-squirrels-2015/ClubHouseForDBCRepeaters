class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user
      t.string :title, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end

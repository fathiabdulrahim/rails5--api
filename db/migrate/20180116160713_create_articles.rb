class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.integer :owner_id
      t.string :name
      t.string :price
      t.text :description

      t.timestamps
    end
  end
end

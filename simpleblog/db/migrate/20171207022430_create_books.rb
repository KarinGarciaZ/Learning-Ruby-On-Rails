class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :body
      t.string :price

      t.timestamps
    end
  end
end

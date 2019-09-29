class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.text :short_description
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end

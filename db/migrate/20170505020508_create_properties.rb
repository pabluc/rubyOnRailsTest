class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string :title
      t.text :text
      t.decimal :price

      t.timestamps
    end
  end
end

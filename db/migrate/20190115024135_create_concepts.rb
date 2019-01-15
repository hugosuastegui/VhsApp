class CreateConcepts < ActiveRecord::Migration[5.2]
  def change
    create_table :concepts do |t|
      t.string :subject
      t.string :category
      t.string :subcategory
      t.text :description
      t.float :amount

      t.timestamps
    end
  end
end

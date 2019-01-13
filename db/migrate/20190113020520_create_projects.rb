class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :type
      t.text :description
      t.date :end_date
      t.string :client
      t.string :location
      t.float :revenue
      t.float :volume
      t.float :marginal_contribution

      t.timestamps
    end
  end
end

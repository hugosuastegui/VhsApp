class AddAccountToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :account, :string
  end
end

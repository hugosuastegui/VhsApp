class RemoveRevenueFromProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :revenue, :float
  end
end

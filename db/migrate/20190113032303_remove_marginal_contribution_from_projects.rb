class RemoveMarginalContributionFromProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :marginal_contribution, :float
  end
end

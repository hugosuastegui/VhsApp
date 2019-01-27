class AddProjectReferenceToConcepts < ActiveRecord::Migration[5.2]
  def change
    add_reference :concepts, :project, foreign_key: true
  end
end

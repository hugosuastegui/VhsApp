class AddInvoiceToConcepts < ActiveRecord::Migration[5.2]
  def change
    add_column :concepts, :invoice, :string
  end
end

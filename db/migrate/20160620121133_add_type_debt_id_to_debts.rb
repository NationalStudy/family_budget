class AddTypeDebtIdToDebts < ActiveRecord::Migration
  def change
    add_column :debts, :id_type_debts, :integer
  end
end

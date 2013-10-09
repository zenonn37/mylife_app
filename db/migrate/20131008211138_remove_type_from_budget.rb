class RemoveTypeFromBudget < ActiveRecord::Migration
  def change

  	remove_column :budgets, :type

  	add_column :budgets, :trans_type, :string
  end
end

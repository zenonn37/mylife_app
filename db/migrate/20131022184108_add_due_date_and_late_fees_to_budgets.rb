class AddDueDateAndLateFeesToBudgets < ActiveRecord::Migration
  def change
  	add_column :budgets,:due_date,:string
  	add_column :budgets, :late_fees,:string
  end
end

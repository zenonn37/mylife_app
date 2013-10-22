class RemoveDueDateFromBudget < ActiveRecord::Migration
  def change

  		remove_column :budgets,:due_date

  	add_column :budgets,:due_date,:string
  end
end

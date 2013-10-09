class AddDebitToBudgets < ActiveRecord::Migration
  def change

  	add_column :budgets, :debit,:decimal
  end
end

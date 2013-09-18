class AddCreditAndDebitToTransactions < ActiveRecord::Migration
  def change
  	add_column :transactions, :debit,:integer
  	add_column :transactions, :credit,:integer

  	remove_column :transactions,:amount

  end
end

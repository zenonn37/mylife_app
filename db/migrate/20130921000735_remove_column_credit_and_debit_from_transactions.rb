class RemoveColumnCreditAndDebitFromTransactions < ActiveRecord::Migration
  def change
  	remove_column :transactions, :credit
  		remove_column :transactions, :debit

  	add_column :transactions, :credit, :decimal, precision: 8, scale: 2	

  	add_column :transactions, :debit, :decimal, precision: 8, scale: 2	

  end
end

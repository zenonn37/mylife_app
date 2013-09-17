class RemoveTypeColumnFromTransactions < ActiveRecord::Migration
  def change

  	remove_column :transactions, :type

  	add_column :transactions,:trans_type, :string
  	add_column :transactions,:cleared,:boolean, default: false
  end
end

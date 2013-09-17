class RemoveWrongColumnsFromTransactions < ActiveRecord::Migration
  def change

  	remove_column :transactions, :index
  	 	remove_column :transactions, :new
  	 	 	remove_column :transactions, :edit
  	 	 	 	remove_column :transactions, :show


  	add_column :transactions, :name, :string
  		add_column :transactions, :amount,:integer
  			add_column :transactions, :type,:string

  end
end

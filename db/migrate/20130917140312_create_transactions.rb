class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :index
      t.string :new
      t.string :edit
      t.string :show

      t.timestamps
    end
  end
end

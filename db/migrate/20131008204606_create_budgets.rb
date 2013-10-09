class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.string :name
      t.string :type
      t.decimal :amount
      t.boolean :repeat
      t.string :img

      t.timestamps
    end
  end
end

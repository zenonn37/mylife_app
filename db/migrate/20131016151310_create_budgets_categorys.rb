class CreateBudgetsCategorys < ActiveRecord::Migration
  def change
    create_table :budgets_categorys do |t|

    	t.belongs_to :budget
    	t.belongs_to :category

      t.timestamps
    end
  end
end

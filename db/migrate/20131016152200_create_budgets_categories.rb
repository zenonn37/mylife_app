class CreateBudgetsCategories < ActiveRecord::Migration
  def change
    create_table :budgets_categories do |t|

        t.belongs_to :budget
    	t.belongs_to :category

      t.timestamps
    end
  end
end

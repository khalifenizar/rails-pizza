class AddPizzaIdToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :pizza_id, :integer
  end
end

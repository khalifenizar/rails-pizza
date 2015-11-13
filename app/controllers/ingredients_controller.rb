class IngredientsController < ApplicationController
  def create
    @pizza = Pizza.find_by(id: params[:pizza_id])
    @ingredient = @pizza.ingredients.new(ingredient_params)

    if @ingredient.save
      redirect_to("/pizzas/#{@pizza.id}")
    else
      render "pizzas/show"
    end
  end


  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end

class PizzasController < ApplicationController
  def new
    @pizza = Pizza.new

    render :new
  end

  def create
    @pizza = Pizza.new(pizza_params)

    if @pizza.save
      redirect_to("/pizzas/#{@pizza.id}")
    else
      render :new
    end
  end


  private

  def pizza_params
    params.require(:pizza).permit(:crust, :sauce, :size)
  end
end

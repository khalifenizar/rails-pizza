class PizzasController < ApplicationController
  def new
    @pizza = Pizza.new

    render :new
  end
end

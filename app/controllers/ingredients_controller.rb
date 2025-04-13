class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end
  
  def show
    @ingredient = Ingredient.find(params[:id])
  end
  
  def new
    @ingredient = Ingredient.new
  end
  
  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to @ingredient
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def updated_at
    @ingredient = Ingredient.find(params[:id])
    if @ingredient.update(ingredient_params)
      redirect_to @ingredient
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  private
    def ingredient_params
      params.expect(ingredient: [ :quantity, :meal_id, :food_id ])
    end
end

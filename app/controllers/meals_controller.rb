class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end
  
  def show
    @meal = Meal.find(params[:id])
  end
  
  def new
    @meal = Meal.new
  end
  
  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      redirect_to @meal
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def updated_at
    @meal = Meal.find(params[:id])
    if @meal.update(meal_params)
      redirect_to @meal
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  private
    def meal_params
      params.expect(meal: [ :name, :notes ])
    end
end

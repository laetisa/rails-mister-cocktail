class DosesController < ApplicationController

  before_action :set_dose, only:[:destroy]
  before_action :set_cocktail, only:[:new, :create]

  def create
    @dose = Dose.new(d_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'cocktails/show'
    end
  end

  def new
    @ingredients =Ingredient.all
    @dose = Dose.new
  end

  def edit
    @dose = Dose.new
  end

  def update
    @dose.update(d_params)

  end

  def destroy
    @dose.destroy
    redirect_to cocktails_path
  end

  private

  def d_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end
    def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end

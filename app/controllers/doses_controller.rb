class DosesController < ApplicationController

  before_action :set_dose, only:[:destroy, :edit, :update]
  before_action :set_cocktail

  def create
    @doses = Dose.new(d_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocil_path(@cocktail)
    else
      render 'cocktails/show'
    end
  end

  def new
    @ingredients =Ingredient.all
    @dose = Dose.new
  end

  def edit
  end

  def update
  end

  def destroy
    @dose = Dose.destroy(d_params)
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

class CocktailsController < ApplicationController
  def index
    # raise
    @cocktails = params[:search] ? Cocktail.where('lower(name) LIKE ?', "%#{params[:search].downcase}%") : Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @review = Review.new
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end

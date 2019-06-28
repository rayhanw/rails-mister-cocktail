class CocktailsController < ApplicationController
  def index
    # @cocktails = params[:search] ? @cocktails = Cocktail.where('lower(name) LIKE ?', "%#{params[:search].downcase}%") : @cocktails = Cocktail.all

    if params[:search].present?
      @cocktails = Cocktail.where('lower(name) LIKE ?', "%#{params[:search].downcase}%")
    elsif params[:tag].present?
      @cocktails = Cocktail.tagged_with(params[:tag])
    else
      @cocktails = Cocktail.all
    end
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
      flash[:success] = 'Cocktail successfully added!'
      redirect_to cocktail_path(@cocktail)
    else
      flash[:danger] = @cocktail.errors.full_messages.join(', ')
      render :new
    end
  end

  # def tagged
  #   if params[:tag].present?
  #     @cocktails = Cocktail.tagged_with(params[:tag])
  #   else
  #     @cocktails = Cocktail.all
  #   end
  # end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, tag_list: [])
  end
end

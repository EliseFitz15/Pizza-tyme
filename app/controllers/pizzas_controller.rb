class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def new
    @pizza = Pizza.new
  end

  def create
    @pizza = Pizza.new(pizza_params)
    @user = User.where(user_id: params[:user_id])
    if @pizza.save!
      flash[:notice] = "Pizza added to the list"
      redirect_to pizzas_path
    else
      flash[:error] = @pizza.errors.full_messages.join(". ")
      render :new
    end
  end

  protected
  def pizza_params
    params.require(:pizza).permit(:name, :description, :price, :location, :slice_count, :user_id)
  end
end

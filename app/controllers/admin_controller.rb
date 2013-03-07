class AdminController < ApplicationController
  before_filter :authenticate_user!

  def index
    @products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  def show
     @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end

  def edit
  end
end

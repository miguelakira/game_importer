class ProductsController < ApplicationController
  # GET /products
  # GET /products.json


  def index
    console_id = params[:console_id] unless params[:console_id].nil?
    @products = Product.where(:console_id => console_id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end

end

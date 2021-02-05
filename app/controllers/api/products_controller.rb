class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.product_type = params[:product_type] || @product.product_type
    @product.brand = params[:brand] || @product.brand
    @product.name = params[:name] || @product.name
    @product.time = params[:time] || @product.time
    @product.step = params[:step] || @product.step
    @product.image = params[:image] || @product.image

    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def create
    @product = Product.new({
      product_type: params[:product_type],
      brand: params[:brand],
      name: params[:name],
      time: params[:time],
      step: params[:step],
      image: params[:image]
    })
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @recipe.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(params[:id])
    @product.destroy
    render json: {message: "Product successfully removed!"}
  end

end

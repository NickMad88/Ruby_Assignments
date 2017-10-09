class ProductsController < ApplicationController
  def index
    render = text: "Whats up mang!?"
  end

  def create
    @product = Product.create( name: params[:name], description: params[:description])
    redirect_to '/products/index'
  end
end
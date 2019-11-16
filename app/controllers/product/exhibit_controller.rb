class Product::ExhibitController < ApplicationController
  def new
    @product = Product.new
  end
end

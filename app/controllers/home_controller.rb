class HomeController < ApplicationController
  def index
    # Controller code here
    @products = Product.all # fetch all products from the database
    render :index # render the index.html.erb view file
  end
end

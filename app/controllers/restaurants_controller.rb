class RestaurantsController < ApplicationController
  RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
  }

  # CRUD
  # Create: Restaurant.create({})  name: "Pasta", ...
  # Read: Restaurant.find(1) // Restaurant.where(category: 'italian')
  # Edit: Restaurant.find(1).update({})
  # Delete: Restaurant.destroy(1)

  def index
    # byebug
    query = params[:category]
    if query.present?
      @restaurants = RESTAURANTS.select do |id, restaurant|
        restaurant[:category] == query.downcase
      end
    else
      @restaurants = RESTAURANTS # Restaurant.all
    end
    # render 'app/views/restaurants/index.html.erb'
  end
end

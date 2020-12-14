class Api::V1::CitiesController < ApplicationController
  def index
    @cities = City.select(:id, :name, :state)
  end
end

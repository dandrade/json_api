class Api::V1::PeopleController < ApplicationController

  def index
    @people = Person.select(:id, :name,:email, :company_id, :city_id).includes(:company, :city)
  end

  def show

  end
end

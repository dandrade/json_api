class Api::V1::PeopleController < ApplicationController
  before_action :set_person, only: [:show]

  def index
    @people = Person.select(:id, :name,:email, :company_id, :city_id).includes(:company, :city)
  end

  def show
    unless @person
      render json: { error: "Couldn't find Person with 'id'=#{params[:id]}" }, status: 404
    end
  end

  private
  def set_person
    @person = Person.find_by(id: params[:id])
  end
end

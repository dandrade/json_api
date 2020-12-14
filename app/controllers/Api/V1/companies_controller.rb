class Api::V1::CompaniesController < ApplicationController
  def index
    @companies = Company.select(:id, :name)
  end
end

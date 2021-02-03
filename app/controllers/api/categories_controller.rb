class Api::CategoriesController < ApplicationController

  def index
    @countries = HTTP.headers("key" => Rails.application.credentials.countries_api[:api_key]).get("https://holidayapi.com/v1/countries").parse
    render "index.json.jb"
  end
end

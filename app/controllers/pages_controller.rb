class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  	if params[:query].present?
      @flats = policy_scope(Flat).search_by_name_and_description_and_address(params[:query])
    else
      @flats = policy_scope(Flat)
    end
  end
end

class CategoriesController < ApplicationController

  def show
    @category = Internal.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @category }
    end
  end

end

class PoemsController < ApplicationController
  before_action :set_blog, only: [:show]
  
  def index
    @poems = Poem.all
    render json: @poems
  end

  def show
    render json: @poems
  end

  private
    def set_blog
      @poems = Poem.find(params[:id])
    end
end

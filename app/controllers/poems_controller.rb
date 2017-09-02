class PoemsController < ApplicationController
  before_action :set_poem, only: [:show]
  
  def index
    @poems = Poem.all
    render json: @poems
  end

  def show
    render json: @poems
  end

  private
    def set_poem
      @poems = Poem.find(params[:id])
    end
end

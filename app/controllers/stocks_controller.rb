class StocksController < ApplicationController

  def index
    @stocks = Stock.all
  end

  def show
    @stock = Stock.find(params[:id])
  end

  def new
    #code
  end

  def edit
    #code
  end

  def create
    #code
  end

  def update
    #code
  end

  def destroy
    #code
  end

end
